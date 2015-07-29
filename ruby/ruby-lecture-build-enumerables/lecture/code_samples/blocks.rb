class Array

  # yield
  # yield each element of the array
  # return each element that meets the condition
  # need to make a new array(container)
  # 
  def my_select
    index = 0
    container = []
    while index < self.length
      value = yield(self[index])
      # if value == true
      #   container << self[index]
      # else
      #   # do nothing
      # end
      container << self[index] if value
      index += 1
    end
    return container
  end

end

new_array = [100,200,300].my_select do |num|
  if num > 100
    true
  else
    false
  end
end

puts new_array.inspect # => [2,4,6]