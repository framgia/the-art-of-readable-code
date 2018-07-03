gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './user'

class UserTest < Minitest::Test
  # The name test1() is meaningless
  def test1
    #The test is very long and full of unimportant details.
    #Adding another test isn’t easy.
    #The test tries to test everything at once.
    users = []
    # The test inputs aren’t simple.
    # The test inputs don’t thoroughly exercise the code.
    user.push {id: 1, name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "20-11-1992", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", birthday: "20-11-1993", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 125
    assert expected == User.new.total_age(users)

    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "20/11/1992", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", birthday: "20-11-1993", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 125
    assert expected == User.new.total_age(users)

    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", birthday: "20-11-1993", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 109
    assert expected == User.new.total_age(users)


    users = []
    user.push {id: 1, name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991", asset: 12343416563256351}
    user.push {id: 2, name: "Nguyen Van A2", birthday: "20-11-1992", asset: 0}
    user.push {id: 3, name: "Nguyen Van A3", asset: 123}
    user.push {id: 4, name: "Nguyen Van A4", birthday: "20-11-1994", asset: 1234}
    user.push {id: 5, name: "Nguyen Van A5", birthday: "20-11-1995", asset: 23123}
    expected = 100
    assert expected == User.new.total_age(users)
  end
end
