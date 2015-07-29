# block scope (scope is like memory)
0.upto(9) do |x|
 print x
end

3.times do
 print "Ho! "
end

3.times do |i|
  puts "hi from " + i.to_s unless i == 3
end

# whats a real world example of using next
# error checking
3.times do |i|
  next if i == 1
  puts i
end

# infinite loop
loop do
  puts "hello"
end

i = 0
loop do
  i = i + 1
  puts "hello"
  break if i == 3
end

