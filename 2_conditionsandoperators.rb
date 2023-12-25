## operators

a = 100 
b = 50
puts a + b; # 100
puts a * b; # 5000
puts a -b;  # 50
puts a / b; # 2

c = true && false
puts c # false

d = true || false
puts d # true 

# "===" using to check the right value is in the distance we set in front of it
e = a -b;
puts (1..50) === e


## condition

grade = 75
if grade >=90
    puts "A"
elsif grade >= 80 && grade <= 89
    puts "B"
else
    puts "B+"
end

## while loop

# i = 0
# while i <=10
#     puts i
#     i+=1
# end
# 1
# 2
# 3
# ...
# 10


## The difference "..." and ".." 

puts (1..10).to_a 
# 1
# 2
# 3
#...
# 10

puts (1...10).to_a
# 1
# 2
# 3
# ...
# 9

## for loop with "..." and ".."

for i in (1..10).to_a
    puts i
end
# 1
# 2
# 3
# ...
# 10

## case statement

$grade = 89
case $grade
when 90..100
    puts "A+"
when 80...90
    puts "A"
when 70...80
    puts "B"
else
    puts "improve"
end

