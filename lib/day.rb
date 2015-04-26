class Day
attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end
###########################################################
#   ZELLER'S CONGRUENCE                                 
#  http://en.wikipedia.org/wiki/Zeller's_congruence
#
#  m = the month(3=March, 4=April.....13=January, 14=February
#  y = year
#
#  will return the first day of the month:
#  0=Saturday, 1=Sunday...6=Friday
###########################################################
  def feb_and_jan
    if @month == 1 || @month == 2
      m = @month + 12
      y = @year - 1
    else
      m = @month + 1
      y = @year
    end
  end

  def day_of_week
    m = feb_and_jan
    day = 1
    q = day
    y = feb_and_jan
    d = y / 4
    c = y / 100
    f = y / 400

    weekday_name = (q + ((m * 26)/10).floor + y + d.floor + (6 * c).floor + f.floor) % 7
  end

end
