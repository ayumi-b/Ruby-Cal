#!/usr/bin/env ruby

require_relative 'lib/month.rb'
require_relative 'lib/day.rb'
require_relative 'lib/year.rb'


if ARGV.length == 1
  year = ARGV[0]

  y = Year.new(year)
  puts y.to_y_s
elsif ARGV.length == 2
  month = ARGV[0]
  year = ARGV[1]

  m = Month.new(month, year)
  puts m.to_s

end

