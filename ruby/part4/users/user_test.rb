gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './user'

class UserTest < Minitest::Test

  def test1
    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi luom lon", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "20-11-1992", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", birthday: "20-11-1993", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 125
    assert expected == User.new.total_age(users)

    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi luom lon", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "20/11/1992", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", birthday: "20-11-1993", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 125
    assert expected == User.new.total_age(users)

    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi luom lon", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", birthday: "20-11-1993", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 109
    assert expected == User.new.total_age(users)


    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi luom lon", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "20-11-1992", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 100
    assert expected == User.new.total_age(users)
  end
end
