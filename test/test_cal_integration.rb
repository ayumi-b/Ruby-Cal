require_relative 'helper'
require_relative '../lib/month.rb'
require_relative '../day.rb'


class TestCalIntegration < Minitest::Unit::TestCase



##Month on Sunday--could the October test cover that?

  def test_month_starts_on_sunday
    output = `./cal.rb 04 2012`
    expected = <<EOS
     April 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    assert_equal expected, output
  end


##Leap Year Stuff

  def test_leap_year_regular
    output = `./cal.rb 02 1952`
    expected = <<EOS
   February 1952
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29

EOS
    assert_equal expected, output
  end

  def test_leap_year_century
    output = `./cal.rb 02 2000`
    expected = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end

  def test_leap_year_400_year
    output = `./cal.rb 02 2400`
    expected = <<EOS
   February 2400
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end

##January
  def test_january_31
    output = `./cal.rb 01 1945`
    expected = <<EOS
    January 1945
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end



##February with 2 tests
  def test_february_28_days
    output = `./cal.rb 02 1805`
    expected = <<EOS
   February 1805
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28

EOS
    assert_equal expected, output
  end

  def test_february_29_days
    output = `./cal.rb 02 1904`
    expected = <<EOS
   February 1904
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
    assert_equal expected, output
  end

##March
  def test_march_31
    output = `./cal.rb 03 2844`
    expected = <<EOS
     March 2844
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end


##April
  def test_april_30
    output = `./cal.rb 04 1863`
    expected = <<EOS
     April 1863
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal expected, output
  end


##May
  def test_may_31
    output = `./cal.rb 05 2200`
    expected = <<EOS
      May 2200
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end


##June
  def test_june_30
    output = `./cal.rb 06 1900`
    expected = <<EOS
     June 1900
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30

EOS
    assert_equal expected, output
  end


##July
  def test_july_31
    output = `./cal.rb 07 2789`
    expected = <<EOS
     July 2789
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31

EOS
    assert_equal expected, output
  end


##August
  def test_august_31
    output = `./cal.rb 08 1993`
    expected = <<EOS
    August 1993
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end


##September
  def test_september_30
    output = `./cal.rb 09 2345`
    expected = <<EOS
   September 2345
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
    assert_equal expected, output
  end


##October
  def test_october_31
    output = `./cal.rb 10 1830`
    expected = <<EOS
    October 1830
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end


##November
  def test_november_30
    output = `./cal.rb 11 2345`
    expected = <<EOS
   November 2345
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30

EOS
    assert_equal expected, output
  end


##December
  def test_december_31
    output = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end


##before 1800 or after 3000
  def test_date_too_early
    output = `./cal.rb 12 1799`
    expected = <<EOS
I'd Cal for you, but only after 1800

EOS
    assert_equal expected, output
  end

  def test_date_too_far_away
    output = `./cal.rb 01 3001`
    expected = <<EOS
I'd cal for you, but between 1800 and 3000.

EOS
    assert_equal expected, output
  end

##other errors
  def test_month_invalid
    output = `./cal.rb April 2000`
    expected = <<EOS
I'd cal for you, but please enter [MM][YYYY].

EOS
    assert_equal expected, output
  end

  def test_date_invalid
    output = `./cal.rb 2000 04`
    expected = <<EOS
I'd cal for you, but please enter [MM][YYYY].

EOS
    assert_equal expected, output
  end





end
