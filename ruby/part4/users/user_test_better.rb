gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './user'

class UserTest < Minitest::Test

  def generate_data_users birthdays
    birthdays.each_with_index.map  do |birthday, index|
      {id: index, name: "nguyen van a", birthday: birthday, asset: 0}
    end
  end

  def calculate_total birthdays, expected
    users = generate_data_users birthdays
    User.new.total_age(users)
  end

  def test_calculate_total_basic
    birthdays = ["20-11-1991", "20-11-1992", "20-11-1993", "20-11-1994", "20-11-1995"]
    assert_equal 125, calculate_total(birthdays)
  end

  def test_calculate_total_backslash_char
    birthdays = ["20-11-1991", "20/11/1992", "20-11-1993", "20-11-1994", "20-11-1995"]
    assert_equal 125, calculate_total(birthdays)
  end

  def test_calculate_total_nil_value
    birthdays = ["20-11-1991", "", "20-11-1993", "20-11-1994", "20-11-1995"]
    assert_equal 109, calculate_total(birthdays)
  end
end
