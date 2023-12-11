require "application_system_test_case"

class SchengenAreasTest < ApplicationSystemTestCase
  setup do
    @schengen_area = schengen_areas(:one)
  end

  test "visiting the index" do
    visit schengen_areas_url
    assert_selector "h1", text: "Schengen areas"
  end

  test "should create schengen area" do
    visit schengen_areas_url
    click_on "New schengen area"

    fill_in "Short description", with: @schengen_area.short_description
    click_on "Create Schengen area"

    assert_text "Schengen area was successfully created"
    click_on "Back"
  end

  test "should update Schengen area" do
    visit schengen_area_url(@schengen_area)
    click_on "Edit this schengen area", match: :first

    fill_in "Short description", with: @schengen_area.short_description
    click_on "Update Schengen area"

    assert_text "Schengen area was successfully updated"
    click_on "Back"
  end

  test "should destroy Schengen area" do
    visit schengen_area_url(@schengen_area)
    click_on "Destroy this schengen area", match: :first

    assert_text "Schengen area was successfully destroyed"
  end
end
