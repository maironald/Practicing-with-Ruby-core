# $i = 0
# $num = 5
# while $i< $num do 
#     puts ("Inside the loop i = #$i")
#     $i +=1
# end

# Result
# Inside the loop i = 0
# Inside the loop i = 1
# Inside the loop i = 2
# Inside the loop i = 3
# Inside the loop i = 4

# $i = 0 
# $num = 5
# begin 
#     puts ("Inside the loop i = #$i")
#     $i +=1
# end while $i <$num

# Result
# Inside the loop i = 0
# Inside the loop i = 1
# Inside the loop i = 2
# Inside the loop i = 3
# Inside the loop i = 4

# $i=0
# $num = 5
# until $i > $num do
#     puts ("Inside the loop i = #$i")
#     $i +=1
# end


# Result
# Inside the loop i = 0
# Inside the loop i = 1
# Inside the loop i = 2
# Inside the loop i = 3
# Inside the loop i = 4
# Inside the loop i = 5 


# $i = 0
# $num = 5
# begin
#     puts("Inside the loop i #$i")
#     $i+=1
# end until $i >$num


# $i = 5
# for i in 0..5
#     puts "Value of local variable is #{i}"
# end

# Value of local variable is 0
# Value of local variable is 1
# Value of local variable is 2
# Value of local variable is 3
# Value of local variable is 4
# Value of local variable is 5


# (0..5).each do |i|
#     puts "Value of the local variable is #{i}"
# end

# Value of local variable is 0
# Value of local variable is 1
# Value of local variable is 2
# Value of local variable is 3
# Value of local variable is 4
# Value of local variable is 5

# for i in 0..5 
#     if(i>2) then break
#     end
#     puts ("Value of local variable #{i}")
# end

# for i in 0..5
#     if i< 2 then
#         puts "Value of local variable is #{i}"
#         redo
#     end
# end

# Value of local variable is 0
# Value of local variable is 0
#..............................

begin
   # exception raised
 rescue
    # handles error
    retry  # restart from beginning
 end
