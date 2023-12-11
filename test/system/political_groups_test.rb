require "application_system_test_case"

class PoliticalGroupsTest < ApplicationSystemTestCase
  setup do
    @political_group = political_groups(:one)
  end

  test "visiting the index" do
    visit political_groups_url
    assert_selector "h1", text: "Political groups"
  end

  test "should create political group" do
    visit political_groups_url
    click_on "New political group"

    fill_in "Abbreviation", with: @political_group.abbreviation
    fill_in "Current meps", with: @political_group.current_meps
    fill_in "Link to website", with: @political_group.link_to_website
    fill_in "Name", with: @political_group.name
    fill_in "President", with: @political_group.president
    fill_in "Short description", with: @political_group.short_description
    click_on "Create Political group"

    assert_text "Political group was successfully created"
    click_on "Back"
  end

  test "should update Political group" do
    visit political_group_url(@political_group)
    click_on "Edit this political group", match: :first

    fill_in "Abbreviation", with: @political_group.abbreviation
    fill_in "Current meps", with: @political_group.current_meps
    fill_in "Link to website", with: @political_group.link_to_website
    fill_in "Name", with: @political_group.name
    fill_in "President", with: @political_group.president
    fill_in "Short description", with: @political_group.short_description
    click_on "Update Political group"

    assert_text "Political group was successfully updated"
    click_on "Back"
  end

  test "should destroy Political group" do
    visit political_group_url(@political_group)
    click_on "Destroy this political group", match: :first

    assert_text "Political group was successfully destroyed"
  end
end
