require 'debugger'
class Array
  def <=> other
   debugger
    puts 'hi'
    # self.<=>(other)
    # 0
  end  
end

# [[1],[2],[3],[4]].sort

[[1],[2]].sort_by {|a| a}

