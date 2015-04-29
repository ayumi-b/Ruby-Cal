require_relative 'day.rb'

class Month
  attr_accessor :month, :year, :days_count, :days_print, :weekday

  def initialize(month, year)
    @month = month
    @year = year
    @weekday
  end

  #def day_of_week
    #@weekday = day_of_week(month, year)
  #end

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


  def leap_year?
    (@year % 4 == 0) || (@year % 100 == 0 && @year % 400 == 0)
  end

  def days_count_in_month
    if leap_year?
      days_count = { 1 => 31, 2 => 29, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
    else
      days_count = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
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
    if weekday == 0
    weekday = 7
    else
      weekday = weekday
    end
  end


  def days_print
    dates = ''
    counter = days_count_in_month
    a = (1..counter).to_a


    empty_day = " "

    weekday = day_of_week.to_i
      (weekday - 1).times do
        a.unshift(empty_day)
    end
    a

    a.each_slice(7) do |k|
      dates << k.map{|k| k.to_s.rjust(2)}.join(" ") + "\n"
    end
    line_counter = dates.lines.count
    new_line = "\n"
    if line_counter == 4
      dates << new_line + new_line
    elsif line_counter == 5
      dates << new_line
    elsif line_counter  == 6
      dates
    end
  end

  def to_s
    to_string = "#{name} #{year}".center(20).rstrip  + "\n" + "#{week_string}" + "\n" + "#{days_print}"
  end

  def to_y_s
    to_stringyr = "#{name}".center(20).rstrip  + "\n" + "#{week_string}" + "\n" + "#{days_print}"
    to_stringyr.gsub("\n", " ")
  end


end
