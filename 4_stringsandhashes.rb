## STRING

a = "Hello World"
b = String.new("Hello World");
puts b # Hello World
puts a == b # true

puts a.length # 11
puts a.size # 11

## Check the element is in or out of the array ? Boolean.
c = [1,2,3]
puts c.include?(2) # true
puts a.include?("e") # true

## print the first element
puts a[0] # H
puts a[a.length-1] # d
puts a[-1] # d

puts a.upcase # HELLO WORLD
puts a.upcase! # when we use the "!" (exclamation mark), it will change the default of this string.
puts a # hello world


## HASH MAP

grades = Hash.new
grades.default = "Improve"
grades[10] = "A+"
grades[9] = "A"
grades[8] = "B"
puts grades[10] # A+
puts grades[7] # there is nothing (fixed it by adding grades.default = "Improve")

a = Hash.new
b = Hash.new
a[0] = 'a'
b[0] = 'a'
puts a
puts b
puts a == b # true

puts grades.length # 3
puts grades.to_a
# 10
# A+
# 9
# A
# 8
# B


x = grades.to_a
puts "#{x}" # [[10, "A+"], [9, "A"], [8, "B"]]
puts grades.has_key?(10) # true
puts grades.has_value?("B+") # false

# Count times appearance of each characters in string.

s = "Hello world"
freq = Hash.new
freq.default = 0 # set all the value of the key is zero (0).
s.each_char do |val|
    freq[val] +=1
end

puts freq # {"H"=>1, "e"=>1, "l"=>3, "o"=>2, " "=>1, "w"=>1, "r"=>1, "d"=>1}

hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value|
    print key, "is", value, "\n"
end

hashColor = {[1, "jan"] => "January", [2, "Feb"] => "February"}
hashColor.each do |key, value|
    puts key, "is", value, "\n"
end


months = Hash.new("month")
puts "#{months[10]}" # => month
puts "#{months[0]}" # => month


# $, = ", "
months = Hash.new( "month" )

keys = months.keys
puts "#{keys}" # []

months = {"1" => "January", "2" => "February"}

keys = months.keys
puts "#{keys}" 
# [1,2]


test1 = {|hash, key| key.to_s.upcase}
test 1 = 
pusts "${test1}