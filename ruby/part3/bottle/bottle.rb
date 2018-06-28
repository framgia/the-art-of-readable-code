# coding: utf-8
# At the end of the example in part 1
# we are left with this version of the bottle class
# Use methods from part 3 of the book to improve this class.
# Especially chapter 10 and 11

# For this example you should:
# - Aggressively identify and extract unrelated subproblems:
#    + Ask yourself, “What is the high-level goal of this code?”
#    + Ask yourself, “Is it working directly to that goal?
#      Or is it solving an unrelated subproblem needed to meet it?”
#    + Extract that part into a function
# - Make code do one task at a time:
#    + List out all the “tasks” your code is doing.
#    + Try to separate those tasks as much as you can into different functions or at least different
#      sections of code.


class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{number-1} bottles of beer on the wall.\n"
    end
  end
end
