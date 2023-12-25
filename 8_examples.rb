$global_variable = 10

class Class1
    def print_global
        puts "Global variable in Class1 is #$global_variable"
    end
end

class Class2
    def print_global
        puts "Global variable in Class2 is #$global_variable"
    end
end

oneNew = Class1.new
twoNew = Class2.new

oneNew.print_global # Global variable in Class1 is 10
twoNew.print_global # Global variable in Class2 is 10
