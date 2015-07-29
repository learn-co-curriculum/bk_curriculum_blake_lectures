name = gets.chomp
# || is the logical or operator 
def correct_name
  name == "Chris" || name == "Blake"
end
if correct_name && name.length == 6
    puts 'get a real job!'
else
    puts 'you must be the smartest kid at the Flatiron School'
end 

# problems
if x == 6 || 7
  puts "x is 6 or 7"
else
  puts "x is not 6 or 7"
end

if x ==6 && x > 4
  puts "x is 6 and greater than 4"
else
  puts "x is not 6 and greater than 4"
end