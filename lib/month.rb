class Month
  attr_accessor :month, :year, :days_count

  def initialize(month, year)
    @month = month
    @year = year
  end

  def week_string
    week_string = 'Su Mo Tu We Th Fr Sa'
  end

  def name
    name = { 1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
    name[@month]
  end


  def to_s
    <<EOS
    #{name} #{year}
#{week_string}
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
  end

  def leap_year?
    (@year % 4 == 0) || (@year % 100 == 0 && @year % 400 == 0)
  end

  def days_count_in_month
    if leap_year? == true
      days_count = { 1 => 30, 2 => 29, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
    else
      days_count = { 1 => 30, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
    end
    days_count[@month]
  end

  def days_print
    counter = days_count_in_month
    a = [*1..counter]
    x = 0
    (a.size % 7).times { |i| return a.slice(i*7, 7).join('  ')}
    x += 1
  end
end
