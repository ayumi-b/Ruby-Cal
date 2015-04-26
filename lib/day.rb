class Day
  attr_reader :month, :year, :day

  def initialize(month, year)
    @month = month
    @year = year
  end
###########################################################
#   ZELLER'S CONGRUENCE
#  http://en.wikipedia.org/wiki/Zeller's_congruence
#
#  h = (q + ((13*(m+1))/5) + K + (K/4) + (J/4) + 5*J) % 7
#where: 
#  m = the month(3=March, 4=April.....13=January, 14=February
#  y = year
#  q = day of month
#  will return the first day of the month:
#  0=Saturday, 1=Sunday...6=Friday
###########################################################
  #def date_sets
    #if month <= 2
      #m = @month+ 12
      #y = @year- 1
    #else
      #m = @month+ 1
      #y = @year
    #end
  #end

  def day_of_week
    if @month <= 2
      @month+= 12
      @year-= 1
    end

      m = @month += 1
      y = @year
      q = 1
    #m = date_sets
    #day = 1
    #q = day
    #y = date_sets
    p = y / 4
    c = y / 100
    f = y / 400

    weekday_name = (q + ((m * 26) / 10) + y + p + (6 * c) + f) % 7
  end

end
