require "application_system_test_case"

class PoliticalPartiesTest < ApplicationSystemTestCase
  setup do
    @political_party = political_parties(:one)
  end

  test "visiting the index" do
    visit political_parties_url
    assert_selector "h1", text: "Political parties"
  end

  test "should create political party" do
    visit political_parties_url
    click_on "New political party"

    fill_in "Name", with: @political_party.name
    fill_in "Political group", with: @political_party.political_group_id
    click_on "Create Political party"

    assert_text "Political party was successfully created"
    click_on "Back"
  end

  test "should update Political party" do
    visit political_party_url(@political_party)
    click_on "Edit this political party", match: :first

    fill_in "Name", with: @political_party.name
    fill_in "Political group", with: @political_party.political_group_id
    click_on "Update Political party"

    assert_text "Political party was successfully updated"
    click_on "Back"
  end

  test "should destroy Political party" do
    visit political_party_url(@political_party)
    click_on "Destroy this political party", match: :first

    assert_text "Political party was successfully destroyed"
  end
end
