class Human
    def evolve
        puts 'Humans evolve'
    end
end

class Person < Human
    # the variable below which we want to see how many persons were created.
    @@persons = 0
    def initialize (id, name, age)
        @id = id
        @name = name
        @age = age
        @@persons+=1
    end

    def intro
        puts "My name is #{@name}  and my age is #{@age}"
    end

    # the method getPersonCount is accessed to the self class.
    def self.getPersonCount
        return @@persons
    end

    # inheritance
    def evolve
        super
        puts 'Persons evolve'
    end
end

person1 = Person.new(1, "Joe", 35)
person2 = Person.new(2,"James",30)
person3 = Person.new(2,"James",30)
person1.intro # My name is Joe  and my age is 35
person2.intro # My name is James  and my age is 30

puts Person.getPersonCount; # 3

# if we don't create again function in class person which is inherited from Human of person, we could use this Human's function.
# if we create function in class person which is inherited from Human of person, we will use that person's function. If we want to use both Human's and Person's function, we can use key "super".
person1.evolve