All objects in Ruby inherit from other objects.  If you call a method that does not exist on the object itself, Ruby will go up the heirarchy until it finds a method with that name or you'll get no method error.  If you'd like to know what classes your object inherits from, you can call ancestors on its class.

Use inheritance when you have an "is a" relationship.

The fundamental goal is code reuse. (DRY)

Once you learn inheritance you'll see it everywhere.  BE CAREFUL.  In general inheritance is a bad pattern. Most things are not really well modeled by this relationship. Don't use inheritance just to dry your code.  Use composition.

Create an abstract class which describes common behavior and state/data for all things of this type.  

Create subclasses that you would like to have all the behavior of the superclass, AND additional behavior that is different.

If you call the keyword super in a subclass it will call the same method in the superclass.
If you call super with no arguments, it will pass along the arguments passed to that method. If you call super() it will not pass along any arguments.

Ex.
A car is a vehicle
A student is a person
A bear is an animal

Potential Gotchas
Using the same instance variables in the "abstract class" as the subclass.

class Person
  def initialize
    @height = 6
  end
end

class Blake
  def initialize
    super
    @height = 7
  end
end
b = Blake.new
this will create an instance of blake with the instance variable height set to 7.  Be careful when you're setting the same instance variable in both the super and subclass and calling super. Depending on the order you set/call super in you'd end up with a different value for that instance variable.  