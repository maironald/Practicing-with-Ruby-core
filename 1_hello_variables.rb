#  puts('a');
a = 1
b = 2
c = a + b
puts "The sum of #{a} + #{b} = #{c}"


puts 3 <=> 2

$debug
print "debug\n" if $debug

x = 1
unless x>=2
    puts "X is less than 2"
else
    puts "X is greater than 2"
end

$var =  1
print "1 -- Value is set\n" if $var  
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var 
