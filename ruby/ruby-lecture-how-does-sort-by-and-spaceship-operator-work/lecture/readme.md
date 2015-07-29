# Prerequisites

Methods, block basics, yield, arrays

# Objectives

Students will be able to:

  * Write methods that take blocks
  * Write their own version of the sort_by method.

Students will understand:

  * Sorting

# Script

## Presenting The Conflict


Why does ruby "incorrectly" sort this array?
array = ["D", "b", "c"]

What is ruby actually doing when it's "sorting"

## New Material


It uses the spaceship operator to compare elements to one another.

Let's compare "D" <=> "b" in irb

It thinks "D" is "bigger" than "b"

a <=> b :=
  if a < b then return -1
  if a = b then return  0
  if a > b then return  1
  if a and b are not comparable then return nil

the "comparison or spaceship operator" is a method call!  we can see what it does for any class.

unforunately the docs don't tell us that much.

BUT

"D".ord #=> 68, this is it's ascii character value
"b".ord #=> 98

so it's implementing some internal sorting algorithm for us, and when it needs to decide which of two things is bigger it uses the <=> operator.

what if we want to make all the comparison use an "upcased" version of our letters so D get's put in the right place

array = ["D", "b", "c"]
array.sort_by {|element| element.upcase}

what about the sort method that takes a block?
this method will pass us two elements from the array, and we have to tell it how to compare them

lets say we have a bunch of strings that have a random character appended to the front which is messing up our sort
and we actually want our sort to show us the person with the "highest" name first
array = ["pblake", "xashley", "zkatie", "asteven"]
we can tell it, anytime you compare two things (x and y which it will hand you) just slice off the first character of each
array.sort {|x,y| y.slice(1, y.length) <=> x.slice(1, x.length)}
# if x is on the left and is greater it will return 1
# but if we put x on the right and it's greater it will return -1 for x which will say x is "smaller" even though its actually bigger

now how could we write out own version of the sort_by method?

class Array

  def sort_by
    container = []
    self.each do |element|
      transformed_element = yield element
      container << [transformed_element, element]
    end
    container.sort! {|x,y| x[0] <=> y[0]}
    container.collect {|element| element[1]}
  end

end


### Topic 2

## Conclusion

* Blocks are powerful
* You want to wrap up in a method the part that always happens.  The block allows a method that has one part that is different to not have to be rewritten everytime.

