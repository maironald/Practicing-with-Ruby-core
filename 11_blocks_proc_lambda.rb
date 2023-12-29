# def test1
#     puts "You are in the method"
#     yield
#     puts "You are again back to the method"
#     yield
# end

# test1 {puts "You are in the block"}

# # You are in the method
# # You are in the block
# # You are again back to the method
# # You are in the block


# # Blocks (yield statement)
# def test2
#     yield(5)
#     puts "You are in the method test"
#     yield 6
# end

# test2 {|i| puts "you are in the block #{i}"}
# # you are in the block 5
# # You are in the method test
# # you are in the block 6

# # Blocks and methods
# def test3(a = 10, &block)
#     puts a
#     block.call
# end

# test3 {puts "Hello World"}
# # 10
# # Hello World

# # Begin and End with blocks.
# BEGIN {
#     #Begin block code
#     puts "BEGIN code block"
# }
# END{
#     #END block code
#     puts "END code block"
# }

# puts "Main block code"



# # Proc 
# number_squared = Proc.new{|n| n * n}
# class Array 
#     def map!(proc_object)
#         self.each_with_index do |value, index|
#             self[index] = proc_object.call(value)
#         end
#     end
# end

# array = [1,2,3,4]
# puts "#{array.map!(number_squared)}"
# # [1,4,9,16]


# puts "#{[1,2,3].map(&number_squared)}";
# # [1,4,9]

# number_squared.call(4)
# # 16

# puts "#{[2,4,5].map(&number_squared)}"
# # [4, 16,25]


# # Lambda


# result = lambda {|x| x + 1}
# puts result.call(10)
# # 11
# result = -> (x) {x + 1}
# puts result.call(10)
# # 11

# result = lambda do |method_name|
#     if method_name == "cong"
#         return 1+2
#     elsif method_name == "tru"
#         return 2-1
#     elsif method_name == "nhan"
#         return 2*2
#     else
#         2/1
#     end
# end

# puts result.call("cong")
# # 3
# puts result.call("")
# # 2

# puts result.call("tru")
# #1
# puts result.call(10)
# #2

# puts result[10]
# #2
# puts result.(10)
# #2

# # the way to assgin lambda to function
# def tinh(method)
#     yield(method)
# end

# puts "#{tinh("cong", &result)}"
# # lambda


# # const maps = [1,2,3,4]
# # puts "#{}"

a = [1,2,3,4,5].freeze
puts "#{a.map!{|n| n * 2}}" # [2, 4, 6, 8 ,10]
puts "#{a}"

