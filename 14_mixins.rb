module Green_Bean
    def introducing_private
        puts "this is private function"
    end
    def introducing1
        puts "This is the green bean"
    end
    private :introducing_private
end

module Red_Bean
    def introducing2
        puts "This is the red bean"
    end
end

#extend module
module Blue_Bean
    def introducing3
        puts "this is the blue bean"
    end
end

class Sample
    include Green_Bean
    include Red_Bean
    extend Blue_Bean
    def introducing4
        puts "There are two beans"
    end
end

samp = Sample.new
samp.introducing1
# This is the green bean
samp.introducing2
# This is the red bean
samp.introducing4 
# There are two beans

# samp.introducing_private # this code will error because func introducing_private is private
# The error is "private method `introducing_private' called for #<Sample:0x00007f9dad058c30>"

# samp.introducing3 # this code will error because the "extend" is used for class (that means you need call name class to use , not object)
# The error is "undefined method `introducing3' for #<Sample:0x00007fcad246cba8>"

Sample.introducing3
# this is the blue bean




# using both "include" and "extend"
module First
    def method_one
        puts "this is a method one."
    end
    module ClassMethods
        def method_two
            puts "this is a class method."
        end
    end
    def self.included(base)
        base.extend(ClassMethods)
    end
end

class User
    include First
end

User.new.method_one
# this is a method one

User.method_two
# this is a class method

module Three
    def method_three
        puts "this is method three."
    end
    module Four
        def method_four
            puts "This is method four."
        end
        def method_five
            puts "This is method four."
        end
    end
    def self.extended(base)
        base.include(Four)
    end
end


class Order
    extend Three
end

a = Order.new
a.method_four
# This is method four.

# a.method_three
# undefined method `method_three' for #<Order:0x00007fe6f70c75c0>

Order.method_three
# this is method three.

# Order.method_four
# there will have an erroe: ndefined method `method_four' for Order:Class (NoMethodError)

Order.new.method_four
# this is method four.



# Module can have an instance methods and class methods
module Advance
    extend self
    def sum
        puts "this is the method"
    end
end

class AdvanceClass
    include Advance
end

AdvanceClass.new.sum
