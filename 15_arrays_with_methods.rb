#  each,  map, reduce, detect

a = [1,2,3,4,5]
# a.each{|i| print i, "--"}
puts "#{a.each{|i| i>3}}"  # [1, 2, 3, 4, 5]


a = [1,2,3,4,5]
puts "#{a.map{|n| n * 2}}" # [2, 4, 6, 8 ,10]

users_id = []
a.each{|id| users_id << id+2} 

puts "#{users_id}"
# puts "#{a.map(&:id)}"
b = a.map{|id| id + 2}
puts "#{users_id}"

puts [1,2,3,4,5].select{|num| num.even?} 
# 2
# 4

puts [2,3,4,5,6].detect{|num| num.odd?}
puts [2,5,3,4,6].detect(&:odd?)

# even_numbers = [1,2,3,4,5].map{|element| element if element.even?}
even_numbers = [1,2,3,4,5].map{|element| element if element.even?}
puts "#{even_numbers}"
# [nil, 2, nil, 4, nil]

# way 2
even_numbers_1 = [1,2,3,4,5].map(&:even?)
puts "#{even_numbers_1}"


# new_even_numbers = even_numbers.compact;
# puts "#{new_even_numbers}"
# [2,4]

array = [1, 2, 3]
array1 = array.reduce{|sum, x| sum + x}
puts array1

array2 = [5,6,7]
array3 = array2.reject{|number| number>3}
puts "#{array3}"
# []

array4 = [5,6, 7]
 array5= array4.reduce{|number, sum| number + sum}
puts "#{array5}"

array_string = ['amber', 'scott', 'tammy']
array_string.reduce{|name, element| name + element}
puts "#{array_string.reduce{|name, element| name + element}}"
# ["amber", "scott", "tammy"]

array_test1 = [{weekday: 'Monday', pay: 123}, {weekday: 'Tuesday', pay: 224}]
# array_test1.reduce(0){|sum, day| sum + day[:pay]}
puts "#{array_test1.reduce(0){|sum, day| sum + day[:pay]}}"
#347
puts "#{array_test1.reduce(100){|sum, day| sum + day[:pay]}}"
#447

array_test1.reduce(100){|sum, day| sum + day[:pay]}


new_array = [{type: "mustang"}, {type: "ford"}]
a = new_array.map{|string| string[:type]}.join(', ')
puts "#{a}"


