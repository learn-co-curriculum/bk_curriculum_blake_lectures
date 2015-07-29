def my_each(array)
  i = 0
  while i < array.length
    if block_given?
      yield array[i]
    end
    i += 1
  end
  array
end

array = [1,2,3]

new_array = []
my_each(array) do |element|
  new_array << element * 2
end

new_array