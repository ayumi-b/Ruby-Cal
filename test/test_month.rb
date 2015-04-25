require_relative 'helper'
require_relative '../lib/month.rb'

class TestMonth < Minitest::Test
  def test_initializing_a_month_saves_values
    m = Month.new(05, 2015)
    assert_equal 05, m.month
    assert_equal 2015, m.year
  end

  def test_to_s_on_jan_2012
    m = Month.new(01, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_jan_2017
    m = Month.new(01, 2017)
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_mar_2009
    m = Month.new(03, 2009)
    expected = <<EOS
    March 2009
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, m.to_s
  end

##Month Name in String

  def test_name_for_january
    m = Month.new(01, 2009)
    assert_equal m.name, "January"
  end

  def test_name_for_march
    m = Month.new(03, 2009)
    assert_equal m.name, "March"
  end
  def test_name_for_december
    m = Month.new(12, 2009)
    assert_equal m.name, "December"
  end

##Number Days in Month
  def test_day_count_in_april_30
    m = Month.new(4, 1863)
    expected = 30
    assert_equal expected, m.days_count_in_month
  end

  def test_day_count_in_march_31
    m = Month.new(3, 2844)
    expected = 31
    assert_equal expected, m.days_count_in_month
  end

##leap year
  def test_leap_year
    m = Month.new(2, 2400)
    expected = true
    assert_equal expected, m.leap_year?
  end

  def test_leap_year
    m = Month.new(5, 1945)
    expected = false
    assert_equal expected, m.leap_year?
  end

##Number Days in February
  def test_day_count_in_february_29
    m = Month.new(2, 2400)
    expected = 29
    assert_equal expected, m.days_count_in_month
  end

  def test_day_count_in_february_28
    m = Month.new(2, 1805)
    expected = 28
    assert_equal expected, m.days_count_in_month
  end

##print numbers
  def test_number_print
    m = Month.new(4, 2012)
    expected = <<EOS
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    assert_equal expected, m.days_print
  end

end
