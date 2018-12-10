require "application_system_test_case"

class ChurchNamesTest < ApplicationSystemTestCase
  setup do
    @church_name = church_names(:one)
  end

  test "visiting the index" do
    visit church_names_url
    assert_selector "h1", text: "Church Names"
  end

  test "creating a Church name" do
    visit church_names_url
    click_on "New Church Name"

    fill_in "Church Name", with: @church_name.church_name
    fill_in "Mens Leader", with: @church_name.mens_leader
    fill_in "Pastor Name", with: @church_name.pastor_name
    click_on "Create Church name"

    assert_text "Church name was successfully created"
    click_on "Back"
  end

  test "updating a Church name" do
    visit church_names_url
    click_on "Edit", match: :first

    fill_in "Church Name", with: @church_name.church_name
    fill_in "Mens Leader", with: @church_name.mens_leader
    fill_in "Pastor Name", with: @church_name.pastor_name
    click_on "Update Church name"

    assert_text "Church name was successfully updated"
    click_on "Back"
  end

  test "destroying a Church name" do
    visit church_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Church name was successfully destroyed"
  end
end
