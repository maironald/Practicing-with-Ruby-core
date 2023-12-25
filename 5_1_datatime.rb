require 'date' # create a library named datetime.
require 'time'

## DATE

mydatevar = Date.parse('21 December 2023')

puts mydatevar.year # 2023
puts mydatevar.mon  # 12
puts mydatevar.mday # 21
# the program will print the day that is monday, tuesday,..,Sunday with number 0..6
puts mydatevar.wday # 4
# the program will print the day it is
puts mydatevar.yday # 355

mydatevar +=5
mydatevar = mydatevar + 5
puts mydatevar.strftime('%a %d %b %Y') # Sun 31 Dec 2023



## TIME

mytimevar = Time.new(2023, 12, 21, 6 ,5, 10, '+07:00')

puts mytimevar # 2023-12-21 06:05:10 +0700
puts mytimevar.hour # 6
puts mytimevar.min # 5
puts mytimevar.sec # 10
puts Time.now # 2023-12-21 14:37:01 +0700