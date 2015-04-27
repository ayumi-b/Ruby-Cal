require_relative 'day.rb'

class Month
  attr_accessor :month, :year, :days_count, :dates, :weekday

  def initialize(month, year)
    @month = month
    @year = year
    @weekday
  end

  def day_of_week
    @weekday = day_of_week(month, year)
  end

  def week_string
    week_string = 'Su Mo Tu We Th Fr Sa'
  end

  def name
    name = { 1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
    name[@month]
  end

  def first_day
    Day.new(month.year).day_of_week
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

  def day_of_week
    if @month <= 2
      @month+= 12
      @year-= 1
    end

      m = @month += 1
      y = @year
      q = 1

    p = y / 4
    c = y / 100
    f = y / 400

    weekday = (q + ((m * 26) / 10) + y + p + (6 * c) + f) % 7
  end


  def days_print
    dates = ''
    counter = days_count_in_month
    a = (1..counter).to_a
    empty_day = "  "
    weekday = day_of_week.to_i
    (weekday - 1).times do
      a.unshift(empty_day)
    end
    a

    a.each_slice(7) do |k|
      dates << k.join(" ") + "\n"
      #shovel stuff
    #dates = "#{dates[0]} + '\n' + #{dates[1} + '\n' + #{dates[2]} + '\n' + #{dates[3]} + "\n" + dates[4] + "\n"+ dates[5]"
    #end
    #a.each_slice(7) {|array| dates << array.join.rstrip}
    end
    dates
  end

    #a.length.times { |i| a.each_slice(7) }


end
