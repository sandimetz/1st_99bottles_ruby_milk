# ...
  # ...
    # ...
      # ...
gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def test_the_first_verse
    expected = <<-VERSE
99 bottles of milk on the wall, 99 bottles of milk.
Take one down and pass it around, 98 bottles of milk on the wall.
VERSE
    assert_equal expected, ::Bottles.new.verse(99)
  end

  def test_another_verse
    expected = <<-VERSE
3 bottles of milk on the wall, 3 bottles of milk.
Take one down and pass it around, 2 bottles of milk on the wall.
VERSE
    assert_equal expected, ::Bottles.new.verse(3)
  end

  def test_verse_2
    expected = <<-VERSE
2 bottles of milk on the wall, 2 bottles of milk.
Take one down and pass it around, 1 bottle of milk on the wall.
    VERSE
    assert_equal expected, ::Bottles.new.verse(2)
  end

  def test_verse_1
    expected = <<-VERSE
1 bottle of milk on the wall, 1 bottle of milk.
Take it down and pass it around, no more bottles of milk on the wall.
    VERSE
    assert_equal expected, ::Bottles.new.verse(1)
  end

  def test_verse_0
    expected = <<-VERSE
No more bottles of milk on the wall, no more bottles of milk.
Go to the store and buy some more, 99 bottles of milk on the wall.
    VERSE
    assert_equal expected, ::Bottles.new.verse(0)
  end

  def test_a_couple_verses
    expected = <<-VERSES
99 bottles of milk on the wall, 99 bottles of milk.
Take one down and pass it around, 98 bottles of milk on the wall.

98 bottles of milk on the wall, 98 bottles of milk.
Take one down and pass it around, 97 bottles of milk on the wall.
VERSES
    assert_equal expected, ::Bottles.new.verses(99, 98)
  end
end
