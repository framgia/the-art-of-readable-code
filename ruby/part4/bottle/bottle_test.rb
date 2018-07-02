gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './bottle'

class BottlesTest < Minitest::Test
  def test_1
    expected = "99 bottles of beer on the wall, " +
      "99 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "98 bottles of beer on the wall.\n"
    assert expected == Bottles.new.verse(99)

    expected = "3 bottles of beer on the wall, " +
               "3 bottles of beer.\n" +
               "Take one down and pass it around, " +
               "2 bottles of beer on the wall.\n"
    assert expected == Bottles.new.verse(3)

    expected = "2 bottles of beer on the wall, " +
               "2 bottles of beer.\n" +
               "Take one down and pass it around, " +
               "1 bottle of beer on the wall.\n"
    assert expected == Bottles.new.verse(2)

    expected = "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    assert expected == Bottles.new.verse(1)

    expected = "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    assert expected == Bottles.new.verse(0)

    expected = "99 bottles of beer on the wall, " +
      "99 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "98 bottles of beer on the wall.\n" +
      "\n" +
      "98 bottles of beer on the wall, " +
      "98 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "97 bottles of beer on the wall.\n"
    assert expected == Bottles.new.verses(99, 98)

    expected = "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n" +
      "\n" +
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n" +
      "\n" +
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    assert expected == Bottles.new.verses(2, 0)
  end
end
