def test1
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end

test1 {puts "You are in the block"}

# You are in the method
# You are in the block
# You are again back to the method
# You are in the block


# Blocks (yield statement)
def test2
    yield 5
    puts "You are in the method test"
    yield 6
end

test2 {|i| puts "you are in the block #{i}"}

# Blocks and methods
def test3(a = 10, &block)
    puts a
    block.call
end

test3 {puts "Hello World"}

# Begin and End with blocks.
BEGIN {
    #Begin block code
    puts "BEGIN code block"
}
END{
    #END block code
    puts "END code block"
}

puts "Main block code"