require "application_system_test_case"

class MemberStatesTest < ApplicationSystemTestCase
  setup do
    @member_state = member_states(:one)
  end

  test "visiting the index" do
    visit member_states_url
    assert_selector "h1", text: "Member states"
  end

  test "should create member state" do
    visit member_states_url
    click_on "New member state"

    fill_in "Capital", with: @member_state.capital
    fill_in "Entry date", with: @member_state.entry_date
    fill_in "Name", with: @member_state.name
    fill_in "Number meps", with: @member_state.number_meps
    fill_in "Population", with: @member_state.population
    click_on "Create Member state"

    assert_text "Member state was successfully created"
    click_on "Back"
  end

  test "should update Member state" do
    visit member_state_url(@member_state)
    click_on "Edit this member state", match: :first

    fill_in "Capital", with: @member_state.capital
    fill_in "Entry date", with: @member_state.entry_date
    fill_in "Name", with: @member_state.name
    fill_in "Number meps", with: @member_state.number_meps
    fill_in "Population", with: @member_state.population
    click_on "Update Member state"

    assert_text "Member state was successfully updated"
    click_on "Back"
  end

  test "should destroy Member state" do
    visit member_state_url(@member_state)
    click_on "Destroy this member state", match: :first

    assert_text "Member state was successfully destroyed"
  end
end
