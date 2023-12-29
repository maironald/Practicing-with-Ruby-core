# # puts "Enter a value: "
# # val = gets
# # puts val

# # str = "Ruby is one"
# # putc str
# #R


# # 2 ways to create a file text.txt

# # aFile = File.new("text.txt", "w")
# # aFile.close

# # File.open("text2.txt", "w") do |aFile|
# #     # ... process the file
# # end


# # reading the data in file input.txt

# aFile = File.new("input.txt", "r")
# if aFile
#     # Reading the first of 20 characters
#     content = aFile.sysread(20)
#     puts content
# else
#     puts "Unable to open file!"
# end

# # writing the data in file input.txt
# aFile = File.new("input.txt", "r+")
# if aFile
#     aFile.syswrite("ABCDEFGH")
#     # change text from "This is the enemy to" to "ABCDEFGHthe enemy to kill my partner"
#     aFile.each_byte{|ch| putc ch; putc ?.}
#     puts "\n"
#     # t.h.e. .e.n.e.m.y. .t.o. .k.i.l.l. .m.y. .p.a.r.t.n.e.r.
# else
#     puts "Unable to open file!"
# end

# # reading the content of file follow by one line
# arr = IO.readlines("input.txt")
# puts arr[0] # ABCDEFGHthe enemy to kill my partner
# puts arr[1] # nil

# # forEach method will link one block and it will not return an array.
# IO.foreach("input.txt"){|block| puts block}

# # Rename the file test1.txt to test2.txt
# File.rename("text2.txt","text1.txt")

# #Deleting the file text1.txt
# File.delete("text1.txt")


# File inquiries

File.open("input.txt") if File::exists? ("file.rb")


puts File.file?("text.txt")