# Count words in a sentence
require 'pp'
require 'pry-nav'
# user a heredoc
require "pry"

sentence = <<-something
    Steven likes the movies.  Blake likes to ride his bike but hates movies.
    Blake is taller than steven.  Steven is a great teacher.
  something

def removepunct(text)
  text.gsub!(",", "")
  text.gsub!(".", "")
  text.gsub!("!", "")
  text.gsub!("?", "")
  text.gsub!(":", "")
  text.gsub!(";", "")
  return text
end

def checker(array)
  highest = {:num => 0, :key => nil}
  newdict = Hash.new(0)
  array.each do |value|
    lvalue = value.downcase
    newdict[lvalue] += 1
    end
  end
  return highest[:key]
end

def breakdown(text)
  text = removepunct(text)
  array = text.split(" ")
  return array
end

def run(text)
  a = breakdown(text)
  b = checker(a)
  return b
end

puts "Testcase: The quick brown fox jumps over the lazy dog."
puts "Expecting 'the'"
puts run("The quick brown fox jumps over the lazy dog.")

# pp counter

# what if we want to see all the words that have the highest frequency grouped together 
# what data structure might be good? arrays hold groups of things, hashes hold keys and values
# why each pair?  why does each behave differently on a hash than an array?
# how do i know what i'll get yielded?

frequency = {}

# pp frequency

# what if i want to just return all words that appear three times in the sentence

highest_frequency = frequency.keys.sort.last
most_common_words = frequency[highest_frequency]

# how much do each of these words cost?
cost = {}

# pp cost
word_cost = {}

# pp word_cost

# how much do all the words cost in total
pp sum