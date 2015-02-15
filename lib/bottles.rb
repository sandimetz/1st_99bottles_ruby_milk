# ...
  # ...
    # ...
      # ...
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
      "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    when 1
      "1 bottle of milk on the wall, " +
      "1 bottle of milk.\n" +
      "Take it down and pass it around, " +
      "no more bottles of milk on the wall.\n"
    when 2
      "2 bottles of milk on the wall, " +
      "2 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "1 bottle of milk on the wall.\n"
    else
      "#{number} bottles of milk on the wall, " +
      "#{number} bottles of milk.\n" +
      "Take one down and pass it around, " +
      "#{number-1} bottles of milk on the wall.\n"
    end
  end
end
