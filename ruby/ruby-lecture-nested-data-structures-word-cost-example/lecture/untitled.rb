require 'pry'
school = {:teachers=>[{:name=>"steph"}, {:name=>"uzo"}, {:name=>"blake"}], :students => [{:name => "giancarlo", :grade => 100, :address => "bronx"},{:name => "jamie", :grade => 200, :address => "NJ"}]}
def iterate(school)
  school.each do |student|
    student.each_pair do |attribute, att_value|
      puts att_value
    end
  end
end

iterate(school[:students])
