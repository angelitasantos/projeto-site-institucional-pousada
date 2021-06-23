require "application_system_test_case"

class CinsTest < ApplicationSystemTestCase
  setup do
    @cin = cins(:one)
  end

  test "visiting the index" do
    visit cins_url
    assert_selector "h1", text: "Cins"
  end

  test "creating a Cin" do
    visit cins_url
    click_on "New Cin"

    fill_in "Code", with: @cin.code
    fill_in "Description", with: @cin.description
    fill_in "Status", with: @cin.status
    click_on "Create Cin"

    assert_text "Cin was successfully created"
    click_on "Back"
  end

  test "updating a Cin" do
    visit cins_url
    click_on "Edit", match: :first

    fill_in "Code", with: @cin.code
    fill_in "Description", with: @cin.description
    fill_in "Status", with: @cin.status
    click_on "Update Cin"

    assert_text "Cin was successfully updated"
    click_on "Back"
  end

  test "destroying a Cin" do
    visit cins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cin was successfully destroyed"
  end
end
