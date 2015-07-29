# just like conditionals we need a statement that returns true or false
# while loops while the condition is truejoi

# real world example of doing this
# something doing work, and iterating, like reading from a file line by line
i = -1
while i < 2
  i = i + 1
  puts i
end 
# potential bugs
# move i into loop
# comparison not working as you expect (i = 3)
# changing the value of i before or after you print

# until loops until the condition is true