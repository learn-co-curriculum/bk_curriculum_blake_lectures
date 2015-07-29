
# Prerequisites

Basics of Hashes and Arrays, basic iteration and blocks.

# Objectives

Students will be able to:

  * Iterate over nested data structures
  * Create nested data structures to represent complicated real world concepts.

Students will understand:

  * Nested Iteration
  * Nested Data Structures

# Script

## Presenting The Conflict

Why use nested data structures?
How would you represent the real world idea of a school?
Maybe you need a list of students.
An array should suffice for that.  But what if the students themselves have attributes.  Then you need hashes for each student, and an array to hold all of the students.

## Grounding In What We Know

Make sure we know how to add things to arrays and hashes and get values back from hash keys.

## New Material

### Topic

Hashes represent "things" or ideas well, things that have properties or related paris of things
Arrays hold lists of things
When you combine them you have a powerful way to hold lists of ideas/objects

What are the scoping implications of nested data structures?
* Gotchas
-modifying one piece modifies the larger whole [mutating_memory](code_samples/pass_by_reference_vs_by_val.rb)
-variables overwriting other variables (naming block variables the same as another variable)

How do we iterate inside an iteration?
  How do we keep it straight in our head, write down examples in the comments of what the variables represent.

How do we deal with the case where we want to insert something into an array but the first time there exists no array, or increment a counter in a hash

[word cost](code_samples/word_cost.rb)
