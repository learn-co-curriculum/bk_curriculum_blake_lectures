require 'pp'
require 'pry-nav'
# user a heredoc
require "pry"

sentence = <<-something
    Steven likes the movies.  Blake likes to ride his bike but hates movies.
    Blake is taller than steven.  Steven is a great teacher.
  something
# how to split a sentence into words
# remove periods
# hash will say cant call + on nil unless we use a special hash
sentence = sentence.gsub(".", " ")
sentence = sentence.split(" ")
counter_array = []
sentence.each do |word|
  sentence.each do |word_two|
    if word == word_two
      if counter_array.detect {|element| element[0] == word}
        index = nil
        sentence.each_with_index do |element, myindex|
          if element[0] == word
            index = myindex
            break
          end
        end
        break if index.nil?
        counter_array[index] = counter_array[index][1] + 1
      else
        counter_array << [word, 1]
      end
    end
  end
end
binding.pry