#!/usr/bin/env ruby

require 'helper'

month = ARGV[0]
year = ARGV[1]

m = Month.new(month, year)
puts m.to_s
