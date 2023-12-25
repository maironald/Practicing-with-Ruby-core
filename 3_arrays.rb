#Array

# way 1
nums = [1,2,3]
names = ["a", "b", "c"]

# way 2
# nums = Array.new([1,2,3])
# names = Array.new(["a", "b", "c"])

puts nums 
# 1
# 2
# 3

puts names
# a
# b
# b

puts "#{nums}"
# [1,2,3]

puts "#{names}"
# ["a", "b", "c"]

# the times string "hello" will appear.
tmp = Array.new(5, "Hello");
puts "#{tmp}" # ["Hello","Hello","Hello","Hello","Hello"]


# using the "..." to create an Array.
tmp1 = Array(20..30)
puts "#{tmp1}" # [20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]

tmp2 = Array.new([10,20,30,40,50])
puts tmp2.length # 5
puts tmp2.size # 5
puts tmp2.first # 10
puts tmp2.last # 50

tmp2.push(60)
puts "#{tmp2}" # [10, 20, 30, 40, 50, 60]

tmp2.pop
puts "#{tmp2}" # [10, 20, 30, 40, 50]

tmp2.each_with_index{|val, idx| puts "The value at index #{idx} is #{val}"}
# The value at index 0 is 10
# The value at index 1 is 20
# The value at index 2 is 30
# The value at index 3 is 40
# The value at index 4 is 50

## delete at index
tmp2.delete_at(0)
puts "#{tmp2}" # [20, 30, 40, 50]

## delete at value
tmp2.delete(20)
puts "#{tmp2}" # [30, 40, 50] 

# set the size of an array at the time of creating array.
names = Array.new(20)
puts names.length # 20 
puts names.size # 20

names2 = Array.new(4, "mac")
puts "#{names2}" # ["mac", "mac", "mac", "mac"]

numberarray = Array.new(10) {|e| e = e*2}
puts "#{numberarray}" # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

numberarray2 = Array.[](1,2,3,4,5)
puts "#{numberarray2}" # [1,2,3,4,5]
numberarray3 = Array[1,2,3,4,5]
puts "#{numberarray3}" # [1,2,3,4,5]

numberarray4= Array(0..9)
num = numberarray4.at(8)
puts num