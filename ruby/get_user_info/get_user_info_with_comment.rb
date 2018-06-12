require 'rest-client'
require 'json'
require 'date'

class User
  # Can you come up with a better name here
  # Find a specific alternative to get that perfectly describe this
  # function
  def get_users
    # What is more important here?
    # the format of the date
    # or the date it self
    # Come up with a better name for this variables.
    yyyymmdstr = Time.now.strftime('%Y/%m/%d')
    # Come up with a better name for this variables.
    response_usrs = RestClient::Request.execute(
      method: :get, url: "http://example.com/users&starts_date=#{yyyymmdstr}",
      timeout: 69  # what's is 69?
    )
    JSON.parse response_usrs
  end

  # Should we name this function like a getter?
  def total_age
    users = get_users
    total = 0
    users.each do |u| # <- find a better name for this variable
      # There is a bug here can you find it.
      user_birth_day = Date.strptime(u.fetch(:birth_day), '%Y').to_s
      current_year = Time.zone.now.year
      total += current_year - user_birth_day
    end
    total
  end
end
