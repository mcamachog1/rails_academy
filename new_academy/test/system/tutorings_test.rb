require "application_system_test_case"

class TutoringsTest < ApplicationSystemTestCase
  setup do
    @tutoring = tutorings(:one)
  end

  test "visiting the index" do
    visit tutorings_url
    assert_selector "h1", text: "Tutorings"
  end

  test "creating a Tutoring" do
    visit tutorings_url
    click_on "New Tutoring"

    fill_in "Date", with: @tutoring.date
    fill_in "End", with: @tutoring.end
    fill_in "Start", with: @tutoring.start
    fill_in "Student", with: @tutoring.student_id
    fill_in "Tutor", with: @tutoring.tutor_id
    click_on "Create Tutoring"

    assert_text "Tutoring was successfully created"
    click_on "Back"
  end

  test "updating a Tutoring" do
    visit tutorings_url
    click_on "Edit", match: :first

    fill_in "Date", with: @tutoring.date
    fill_in "End", with: @tutoring.end
    fill_in "Start", with: @tutoring.start
    fill_in "Student", with: @tutoring.student_id
    fill_in "Tutor", with: @tutoring.tutor_id
    click_on "Update Tutoring"

    assert_text "Tutoring was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutoring" do
    visit tutorings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutoring was successfully destroyed"
  end
end
