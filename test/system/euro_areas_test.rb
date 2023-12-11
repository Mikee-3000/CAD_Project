require "application_system_test_case"

class EuroAreasTest < ApplicationSystemTestCase
  setup do
    @euro_area = euro_areas(:one)
  end

  test "visiting the index" do
    visit euro_areas_url
    assert_selector "h1", text: "Euro areas"
  end

  test "should create euro area" do
    visit euro_areas_url
    click_on "New euro area"

    fill_in "Short description", with: @euro_area.short_description
    click_on "Create Euro area"

    assert_text "Euro area was successfully created"
    click_on "Back"
  end

  test "should update Euro area" do
    visit euro_area_url(@euro_area)
    click_on "Edit this euro area", match: :first

    fill_in "Short description", with: @euro_area.short_description
    click_on "Update Euro area"

    assert_text "Euro area was successfully updated"
    click_on "Back"
  end

  test "should destroy Euro area" do
    visit euro_area_url(@euro_area)
    click_on "Destroy this euro area", match: :first

    assert_text "Euro area was successfully destroyed"
  end
end
