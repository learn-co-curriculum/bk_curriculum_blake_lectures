# print "Enter your grade: "
# grade = gets.chomp
# case grade
# when "A"  
#   puts 'Well done!'
# when "B"  
#   puts 'Try harder!'
# when "C"  
#   puts 'You need help!!!'
# else  
#   puts "You just making it up!"
# end

# if grade == "A"
#   string_to_print = 'Well done!'
# elsif grade == "B"
#   string_to_print = 'Try harder!'
# elsif grade == "C"
#   string_to_print = 'You need help!!!'
# else
#   string_to_print = "You just making it up!"
# end
# puts string_to_print

# print "Enter your grade: "
# grade = gets.chomp
# case grade
# when "A" then puts 'Well done!'
# when "B" then puts 'Try harder!'
# when "C" then puts 'You need help!!!' 
# else  
#   puts "You just making it up!"
# end

# print"Enter your grade: "
# grade = gets.chomp
# case grade
# when "A" || "B"  
#   puts 'Well done!'
# when "C" || "D"
#   puts 'Try harder!'
# else  
#   puts "You just making it up!"
# end

# print "Enter your grade: "
# grade = gets.chomp
# case
# when grade == "A"  
#   puts 'Well done!'
# when grade == "B"  
#   puts 'Try harder!'
# when grade == "C"  
#   puts 'You need help!!!'
# else  
#   puts "You just making it up!"
# end

print "Enter your grade: "
grade = gets.chomp
case
when nil
  puts 'Well done!'
when /B/ 
  puts 'Try harder!'
when /C/  
  puts 'You need help!!!'
else  
  puts "You just making it up!"
end

# print "Enter your grade: "
# grade = gets.chomp
# case grade.to_i
# when 0..2
#   puts 'Well done!'
# when 3..5
#   puts 'Try harder!'
# when 6..10  
#   puts 'You need help!!!'
# else
#   puts "You just making it up!"
# end



