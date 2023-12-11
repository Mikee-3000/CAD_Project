require "application_system_test_case"

class TreatiesTest < ApplicationSystemTestCase
  setup do
    @treaty = treaties(:one)
  end

  test "visiting the index" do
    visit treaties_url
    assert_selector "h1", text: "Treaties"
  end

  test "should create treaty" do
    visit treaties_url
    click_on "New treaty"

    check "Active" if @treaty.active
    fill_in "Date of signing", with: @treaty.date_of_signing
    fill_in "Name", with: @treaty.name
    fill_in "Place of signing", with: @treaty.place_of_signing
    click_on "Create Treaty"

    assert_text "Treaty was successfully created"
    click_on "Back"
  end

  test "should update Treaty" do
    visit treaty_url(@treaty)
    click_on "Edit this treaty", match: :first

    check "Active" if @treaty.active
    fill_in "Date of signing", with: @treaty.date_of_signing
    fill_in "Name", with: @treaty.name
    fill_in "Place of signing", with: @treaty.place_of_signing
    click_on "Update Treaty"

    assert_text "Treaty was successfully updated"
    click_on "Back"
  end

  test "should destroy Treaty" do
    visit treaty_url(@treaty)
    click_on "Destroy this treaty", match: :first

    assert_text "Treaty was successfully destroyed"
  end
end
