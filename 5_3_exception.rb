begin
    puts 'begin'
    puts 3/1
rescue
    # if the error is not catched, we can use the code below in "else"
    puts 'catched an error!'
else
    # if the begin is correct, we can use code below in 
    puts 'looks good'
ensure
    #always run even when the code is cloe
    puts "always run irrespective of above"
end