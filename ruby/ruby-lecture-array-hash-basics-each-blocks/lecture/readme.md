context -> this stuff is important, in one class i taught, 6 weeks in, at the end of ruby, a bunch of people didn't know how to add and remove things from arrays and hashes.  you MUST be fluent in this stuff. you can't move on until this stuff is second nature.

what is the point of collections?
represent ideas!
we should store things in a way that represents ideas we have in the real world
arrays are list of things
a list of teachers = ["blake", "steph"]
hashes are key value pairs.
myteacher = {:name => "blake", :height => "6ft1", :weight => 165}

collections are objects
they have methods
read the docs!
anything you want to do usually already exists in the docs, ruby is meant to be readable so just guess at the name of the method and it's probably right!
differences between hashes and arrays
arrays have an order, hashes are ordered(only in ruby) but don't rely on the order

# Arrays

Index 0? why?

How to create them
Literal Notation (what IS literal notation)
my_array = []

What you can add to them
anything!

How to add things to it
my_array << "hello"
my_array.push("hello")

why are arrays indexed at 0

How to retrieve an element at a certain index
my_array[0]
my_array.first

Find out if an array includes something?
my_array.includes?("hello")

How to pop off the first element of an array
my_array.shift

How to pop off the last thing in an array
my_array.pop

How to add something to the front of an array
my_array.unshift

add, sort, reverse

#hashes

hashes can only have unique keys

How to create them
Literal Notation
my_hash = {:blake => "awesome", :steven => "almost as awesome"}

my_hash = Hash[:blake, "awesome", :steven, "awesome"]
my_hash = Hash.new
my_hash[:blake] = "awesome"

How to set keys
my_hash[:steven] = "almost as awesome"

How to retrieve the value for a key
my_hash[:steven] #=> "almost as awesome"

How to get all keys
my_hash.keys

How to get all the values
my_hash.values

What is a valid key or value?
anything!

iterators
let's first loop through an array using while

EACH
start off by reviewing a while loop
have class
print out puts three times
then print out each element of an array three times
show how this is done.  note that this is a pattern.

but this is a lot of code.  we want to wrap this up into something easier and more terse while still allowing ourselves the flexibility to do different units of work as we iterate.
the method is the part thats a unit of work (iteration) the block is the part that will be different each time

an iterator
note that even though ruby is OO, this is a functional style of programming.  taking a list of things and applying transformations to that data, you can chain these transformations

blocks (two syntaxes)
a unit of work just like a method

blocks are what we want to do, they have no reference, they are anonymous (just like anonymous functions in js), they can take parameters just like methods.  we don't get to define how many parameters a block takes, or what's going to get passed into each.  you can find out what will be passed to your block by reading the method signature.  you CAN name your block variables whatever you want, hopefully something semantically meaningful so you can remember what your variables actually represent.

how do i know what goes in the pipes??
the return value of each is the array you are iterating over, like puts returns nil

scope, block scope, gotchas
