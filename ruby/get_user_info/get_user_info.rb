require 'rest-client'
require 'json'
require 'date'

class User
  def get_users
    yyyymmdstr = Time.now.strftime('%Y/%m/%d')
    response_usrs = RestClient::Request.execute(method: :get, url: "http://example.com/users&starts_date=#{yyyymmdstr}", timeout: 69)
    JSON.parse response_usrs
  end

  def total_age
    users = get_users
    total = 0
    users.each do |u|
      user_birth_day = Date.strptime(u.fetch(:birth_day), '%Y').to_s
      current_year = Time.zone.now.year
      total += current_year - user_birth_day
    end
    total
  end
end
