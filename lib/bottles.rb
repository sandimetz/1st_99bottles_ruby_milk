# ...
  # ...
    # ...
      # ...
class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    when 1
      "#{number} #{container(number)} of milk on the wall, " +
      "#{number} #{container(number)} of milk.\n" +
      "Take it down and pass it around, " +
      "no more #{container(number-1)} of milk on the wall.\n"
    else
      "#{quantity(number)} #{container(number)} of milk on the wall, " +
      "#{quantity(number)} #{container(number)} of milk.\n" +
      "Take one down and pass it around, " +
      "#{quantity(number-1)} #{container(number-1)} of milk on the wall.\n"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def quantity(number)
    number
  end
end
