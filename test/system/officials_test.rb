require "application_system_test_case"

class OfficialsTest < ApplicationSystemTestCase
  setup do
    @official = officials(:one)
  end

  test "visiting the index" do
    visit officials_url
    assert_selector "h1", text: "Officials"
  end

  test "should create official" do
    visit officials_url
    click_on "New official"

    fill_in "Affiliation", with: @official.affiliation
    fill_in "Bio", with: @official.bio
    fill_in "Date of birth", with: @official.date_of_birth
    fill_in "Institution", with: @official.institution_id
    fill_in "Link to institution", with: @official.link_to_institution
    fill_in "Link to website", with: @official.link_to_website
    fill_in "Name", with: @official.name
    fill_in "Place of birth", with: @official.place_of_birth
    fill_in "Political group", with: @official.political_group_id
    fill_in "Position", with: @official.position
    click_on "Create Official"

    assert_text "Official was successfully created"
    click_on "Back"
  end

  test "should update Official" do
    visit official_url(@official)
    click_on "Edit this official", match: :first

    fill_in "Affiliation", with: @official.affiliation
    fill_in "Bio", with: @official.bio
    fill_in "Date of birth", with: @official.date_of_birth
    fill_in "Institution", with: @official.institution_id
    fill_in "Link to institution", with: @official.link_to_institution
    fill_in "Link to website", with: @official.link_to_website
    fill_in "Name", with: @official.name
    fill_in "Place of birth", with: @official.place_of_birth
    fill_in "Political group", with: @official.political_group_id
    fill_in "Position", with: @official.position
    click_on "Update Official"

    assert_text "Official was successfully updated"
    click_on "Back"
  end

  test "should destroy Official" do
    visit official_url(@official)
    click_on "Destroy this official", match: :first

    assert_text "Official was successfully destroyed"
  end
end
