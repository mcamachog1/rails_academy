require "test_helper"

class TutorTest < ActiveSupport::TestCase

  test "should not save tutor without name" do
    tutor = Tutor.new
    assert_not tutor.save, "Saved the tutor without a name"
  end
  
  test "update tutor subject" do
    tutor = Tutor.create(name: "Alvani Hernandez")
    tutor.subject = "Mathematics"
    assert tutor.save
  end 

end
