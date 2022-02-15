require "test_helper"

class PaymentByStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_by_student = payment_by_students(:one)
  end

  test "should get index" do
    get payment_by_students_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_by_student_url
    assert_response :success
  end

  test "should create payment_by_student" do
    assert_difference('PaymentByStudent.count') do
      post payment_by_students_url, params: { payment_by_student: { payment_id: @payment_by_student.payment_id, student_id: @payment_by_student.student_id } }
    end

    assert_redirected_to payment_by_student_url(PaymentByStudent.last)
  end

  test "should show payment_by_student" do
    get payment_by_student_url(@payment_by_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_by_student_url(@payment_by_student)
    assert_response :success
  end

  test "should update payment_by_student" do
    patch payment_by_student_url(@payment_by_student), params: { payment_by_student: { payment_id: @payment_by_student.payment_id, student_id: @payment_by_student.student_id } }
    assert_redirected_to payment_by_student_url(@payment_by_student)
  end

  test "should destroy payment_by_student" do
    assert_difference('PaymentByStudent.count', -1) do
      delete payment_by_student_url(@payment_by_student)
    end

    assert_redirected_to payment_by_students_url
  end
end
