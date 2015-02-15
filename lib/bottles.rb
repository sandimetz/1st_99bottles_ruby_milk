# ...
  # ...
    # ...
      # ...
class Bottles
  # FIXME: no test coverage for 4..98
  def verse(number)
    "#{number} bottles of milk on the wall, " +
    "#{number} bottles of milk.\n" +
    "Take one down and pass it around, " +
    "#{number-1} #{(number-1) == 1 ? 'bottle' : 'bottles'} of milk " +
      "on the wall.\n"
  end
end
