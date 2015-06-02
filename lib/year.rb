require_relative '../lib/month.rb'

class Year
  attr_accessor :year, :m

  def initialize(year)
    @year = year
  end

  def year_in_print
    @year.to_s.center(63) + "\n"
  end

  def month_here(month, year) 
    m = Month.new(month, @year)
    m.to_y_s
  end

  def month_quarter(a, b, c)
    row = month_here(a, @year).zip(month_here(b, @year), month_here(c, @year))
    row.map {|line| line.join(" ")}.join("\n")
  end


  def year_to_s
    griddler = ""
    griddler << year_in_print
    griddler << month_quarter(1, 2, 3)
    griddler << month_quarter(4,5,6)
    griddler << month_quarter(7,8,9)
    griddler << month_quarter(10,11,12)
  end

  #def all_months
    #every_month = []
    
    #(1..12).each { |b| every_month << Month.new(b, @year).to_s.split("\n") }
      #every_month.push(every_month)
  #end

  #def months_in_grid
    #quarter = []
    #all_months.each_slice(3) do |quarterly|
      #quarter << quarterly
    #end
    #puts quarter
  #end
 
  #def months_in_grid
    #column_grid = []
    #column_grid << year_in_print + month_qrtrs(1,2,3) + month_qrtrs(4,5,6)
  #end


end
