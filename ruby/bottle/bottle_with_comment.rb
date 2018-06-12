
class Bottles
  def song
    verses(99, 0)
  end

  def verses(hi, lo) # BAD: hi and lo are not specific enough
    hi.downto(lo).map {|n| verse(n) }.join("\n")
  end

  def verse(n) # BAD: n is too generic
    # BAD: inconsistent style
    # BAD: incomprehensibe code
    # BAD: a giant expression
    "#{n == 0 ? 'No more' : n} bottle#{'s' if n != 1}" + " of beer on the wall, " +
    "#{n == 0 ? 'no more' : n} bottle#{'s' if n != 1} of beer.\n" +
    "#{n > 0  ? "Take #{n > 1 ? 'one' : 'it'} down and pass it around" : "Go to the store and buy some more"}, " +
    "#{n-1 < 0 ? 99 : n-1 == 0 ? 'no more' : n-1} bottle#{'s' if n-1 != 1}" +
    " of beer on the wall.\n"
  end
end
