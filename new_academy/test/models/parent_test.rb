require "test_helper"

class ParentTest < ActiveSupport::TestCase
  
   self.use_instantiated_fixtures = true
  
   test "the truth" do
     assert true
   end
   
   test "parent_count" do
     assert_equal 2, Parent.count
   end
   
   test "find one" do
     assert_equal "Lourdes Sebastiani", parents(:one).name
   end
   
   test "find_one_method_1" do
     assert_equal "Lourdes Sebastiani", @parents['one']['name']
   end

   test "find_one_method_2" do
     assert_equal "Lourdes Sebastiani", @one.name
   end

   test "should not save parent without name" do
     parent = Parent.new
     assert_not parent.save, "Saved the parent without a name"
   end
   
   test "update parent mobile" do
     parent = Parent.new
     parent.name = "Jose Perez"
     parent.mobile = "0414-7672952"
     assert parent.save
   end 
   
   test "update parent email" do
     parent = Parent.find_by name: "Lourdes Sebastiani"
     parent.email = "lsebastiani@hotmail.com"
     assert parent.save
   end 
   
   test "should report error" do
     # some_undefined_variable is not defined elsewhere in the test case
     assert_raises(NameError) do
       some_undefined_variable
     end
   end
   
end
