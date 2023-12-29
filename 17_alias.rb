# Alias Keyword

class User
    def fullname
        "Huynh Trung"
    end
    alias username fullname
    alias name username
end

u = User.new

u.fullname # Huynh Trung
u.username # Huynh Trung
u.name # Huynh Trung

# Alias Method

class User
    def fullname
        puts "Ronald Mai"
    end
    alias_method :username, :fullname
    alias_method "name" , :username
end

u = User.new

u.fullname # Ronald Mai
u.username # Ronald Mai
u.name # Ronald Mai


# Alias and Scopes

# using Alias Method
# class Post
#     def description
#         "I'm a Ronald"
#     end

#     def self.alias_description
#         alias_method :describe , :description
#     end
# end

# class Comment < Post # inheritance using "#"
#     def description
#         "Hello!, Everybody"
#     end
#     alias_description
# end

# m = Comment.new
# puts m.description # Hello!, Everybody
# puts m.describe # Hello!, Everybody

# using Alias Keyword

class Post 
    def description
        "I'm Ronald"
    end

    def self.alias_description
        alias describe description
    end
end

class Comment < Post
    def description
        "Hello, Everybody"
    end
    alias_description
end

ab = Comment.new

puts ab.describe # I'm Ronald
puts ab.description # Hello, Everybody