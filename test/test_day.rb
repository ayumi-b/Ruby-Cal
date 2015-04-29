require_relative 'helper'
require_relative '../lib/day.rb'

class TestDay < Minitest::Test

  def test_saving_args
    d = Day.new(01, 2012)
    assert_equal 1, d.month
    assert_equal 2012, d.year
  end

  def test_first_day_of_april_2012
    d = Day.new(4,2012)
    expected = 1
    assert_equal expected, d.day_of_week
  end

  def test_first_day_of_january_1945
    d = Day.new(1, 1945)
    expected = 2
    assert_equal expected, d.day_of_week
  end

  def test_first_day_of_february_1952
    d = Day.new(2, 1952)
    expected = 6
    assert_equal expected, d.day_of_week
  end

  def test_first_day_of_january_01_2000
    d = Day.new(1, 2000)
    expected = 7
    assert_equal expected, d.day_of_week
  end


end
