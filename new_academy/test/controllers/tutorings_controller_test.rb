require "test_helper"

class TutoringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutoring = tutorings(:one)
  end

  test "should get index" do
    get tutorings_url
    assert_response :success
  end

  test "should get new" do
    get new_tutoring_url
    assert_response :success
  end

  test "should create tutoring" do
    assert_difference('Tutoring.count') do
      post tutorings_url, params: { tutoring: { date: @tutoring.date, end: @tutoring.end, start: @tutoring.start, student_id: @tutoring.student_id, tutor_id: @tutoring.tutor_id } }
    end

    assert_redirected_to tutoring_url(Tutoring.last)
  end

  test "should show tutoring" do
    get tutoring_url(@tutoring)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutoring_url(@tutoring)
    assert_response :success
  end

  test "should update tutoring" do
    patch tutoring_url(@tutoring), params: { tutoring: { date: @tutoring.date, end: @tutoring.end, start: @tutoring.start, student_id: @tutoring.student_id, tutor_id: @tutoring.tutor_id } }
    assert_redirected_to tutoring_url(@tutoring)
  end

  test "should destroy tutoring" do
    assert_difference('Tutoring.count', -1) do
      delete tutoring_url(@tutoring)
    end

    assert_redirected_to tutorings_url
  end
end
