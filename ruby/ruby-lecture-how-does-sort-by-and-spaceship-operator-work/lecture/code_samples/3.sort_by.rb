require 'debugger'
class Array

  def my_sort_by
    return "where's the block!" unless block_given?
    container = []
    debugger
    self.each do |element|
      container << [element, yield(element)]
      debugger
      puts 'hi'
    end
    debugger
    sorted = container.sort {|a, b| a[1] <=> b[1]}
    sorted.collect{|element| element[0]}
  end

end

a = ["A", "C", "c"]
a.my_sort_by {|element| element.upcase}

sorted_array = [19,7,9].sort_by {|a| a}
nested_sort = [[5,2,3], [3,2,1] ]
debugger


puts 'hi'