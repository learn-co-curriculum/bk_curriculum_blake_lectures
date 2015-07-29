big 0
data structures
algorithms

how does Computer memory actually work
when we allocate an array in ruby, it decides to use 5 “spaces” of memory
draw what this looks like
if we use less than this, it’s wasted, but on average we’ve found this is the most efficient
when we add the 6th element, we have to copy the whole array and double its size
when we delete an element in the middle, we have to copy the array and remove that piece
when we search for an element, we have to look in n “slots"

linked lists are only really used in functional programming languages and have different properties
draw a linked list
how does this compare to an array?
inserting is still O(1)
searching is still n
deletion is constant time
and we don’t need to know in advance how big the linked list is going to be, but to insert its n always

big O
so we know what n is, n^2 is just a loop within a loop, log n is binary search

why is big O useful?
if binary search is log n, and we have a large n, maybe sorting our data is useful
so if we have an application that inserts often, and searches never paying the cost to insert and sort every time might not make sense
if we search often and insert infrequently, paying the cost to sort makes a lot of sense because we save so much time searching

[this is essentially what a database index is](http://patshaughnessy.net/2014/11/11/discovering-the-computer-science-behind-postgres-indexes)

[ball problem](http://20bits.com/article/interview-questions-two-bowling-balls)
demistify algorithms
its just a set of instructions you follow that creates the same result any time (sort something)

start with the easy case, don’t sit there thinking about the optimal solution
there’s two levers, what floor you start on, and the interval between drops
talk about the best case and worst case for each solution
you can’t really improve the best case
it’s the worst case you want to improve

linked list and binary search
the big concepts are how do you represent a data structure when none exists?  objects can hold references to other objects
one class holds the logic, one class represents each node.  what does it mean for an object to “know” something
how do you “walk” a tree structure