# def test(a1 = "Ruby", a2 ="Pearl")
#     puts "The programming language is #{a1}"
#     puts "The programming language is #{a2}"
# end

# test "1", "2"
# test

# every methods in Ruby will return a value by default. This returned value will be the value of the last statement.

# def test 
#     i = 100
#     j = 10
#     k = 0
# end

# puts test # 0


# return methods value

def test 
    i = 100
    j = 200
    k = 300
    return i, j ,k
end

puts test
# 100
# 200
# 300

def sample(*test)
    puts "The numbers of the parameters is #{test.length}"
    for i in 0...test.length
        puts "The parameters are #{test[i]}"
    end
end

sample "a", "b", "c", "d"

# the parameters are a 
# the parameters are b 
# the parameters are c 
# the parameters are d 


