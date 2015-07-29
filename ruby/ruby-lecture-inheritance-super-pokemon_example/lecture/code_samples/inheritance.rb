require 'pry'
class A  
  def where_am_i
    puts 'In class A'  
  end  
end  
  
class B < A  
  def where_am_i  
    puts 'In class B'  
  end  
end  

b = B.new  
binding.pry
b.where_am_i