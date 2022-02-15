require "application_system_test_case"

class PaysTest < ApplicationSystemTestCase
  setup do
    @pay = pays(:one)
  end

  test "visiting the index" do
    visit pays_url
    assert_selector "h1", text: "Pays"
  end

  test "creating a Pay" do
    visit pays_url
    click_on "New Pay"

    fill_in "Amount bs", with: @pay.amount_bs
    fill_in "Amount usd", with: @pay.amount_usd
    fill_in "Date", with: @pay.date
    fill_in "Parent", with: @pay.parent_id
    click_on "Create Pay"

    assert_text "Pay was successfully created"
    click_on "Back"
  end

  test "updating a Pay" do
    visit pays_url
    click_on "Edit", match: :first

    fill_in "Amount bs", with: @pay.amount_bs
    fill_in "Amount usd", with: @pay.amount_usd
    fill_in "Date", with: @pay.date
    fill_in "Parent", with: @pay.parent_id
    click_on "Update Pay"

    assert_text "Pay was successfully updated"
    click_on "Back"
  end

  test "destroying a Pay" do
    visit pays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pay was successfully destroyed"
  end
end
