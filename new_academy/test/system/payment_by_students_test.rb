require "application_system_test_case"

class PaymentByStudentsTest < ApplicationSystemTestCase
  setup do
    @payment_by_student = payment_by_students(:one)
  end

  test "visiting the index" do
    visit payment_by_students_url
    assert_selector "h1", text: "Payment By Students"
  end

  test "creating a Payment by student" do
    visit payment_by_students_url
    click_on "New Payment By Student"

    fill_in "Payment", with: @payment_by_student.payment_id
    fill_in "Student", with: @payment_by_student.student_id
    click_on "Create Payment by student"

    assert_text "Payment by student was successfully created"
    click_on "Back"
  end

  test "updating a Payment by student" do
    visit payment_by_students_url
    click_on "Edit", match: :first

    fill_in "Payment", with: @payment_by_student.payment_id
    fill_in "Student", with: @payment_by_student.student_id
    click_on "Update Payment by student"

    assert_text "Payment by student was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment by student" do
    visit payment_by_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment by student was successfully destroyed"
  end
end
