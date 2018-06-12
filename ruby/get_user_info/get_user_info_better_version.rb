require 'rest-client'
require 'json'
require 'date'

class User
  REQUEST_TIMEOUT = 69

  # get user from the internet
  def fetch_users
    current_date = Time.now.strftime('%Y/%m/%d')
    # Come up with a better name for this variables.
    response_users = RestClient::Request.execute(
      method: :get, url: "http://example.com/users&starts_date=#{current_date}",
      timeout: REQUEST_TIMEOUT
    )
    JSON.parse response_users
  end

  def calculate_total_age
    users = get_users
    users.reduce(0){|total_age, user| total_age + calculate_age(user)}
  end

  def calculate_age user
    birthday = Date.strptime(user.fetch(:birth_day), '%Y')
    today = Date.today
    age = today.year - birthday.year
    age -= 1 if today < birthday + age.years
    age
  end
end
