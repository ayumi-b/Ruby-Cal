require_relative 'month.rb'
require_relative 'day.rb'

class Year
  attr_accessor :month, :year, :dates, :name

  def initialize(year)
    @year = year
    @name
  end

  def year_value
    Year.new(year).year
  end

  def all_months
    all_months = ''
    months = (1..12).to_a
    months.each do |m|
      all_months << Month.new(m, @year).to_y_s
    end
    all_months
  end

  def to_s
    year_print = ''
    top_line = "#{year}".center(63) + "\n"
    next_line = all_months
    year_print << top_line + next_line

  end

end
