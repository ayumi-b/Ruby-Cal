#!/usr/bin/env ruby

require_relative 'helper.rb'

month = ARGV[0]
year = ARGV[1]

m = Month.new(month, year)
puts m.to_s
