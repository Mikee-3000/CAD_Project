require "test_helper"

class SchengenAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schengen_area = schengen_areas(:one)
  end

  test "should get index" do
    get schengen_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_schengen_area_url
    assert_response :success
  end

  test "should create schengen_area" do
    assert_difference("SchengenArea.count") do
      post schengen_areas_url, params: { schengen_area: { short_description: @schengen_area.short_description } }
    end

    assert_redirected_to schengen_area_url(SchengenArea.last)
  end

  test "should show schengen_area" do
    get schengen_area_url(@schengen_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_schengen_area_url(@schengen_area)
    assert_response :success
  end

  test "should update schengen_area" do
    patch schengen_area_url(@schengen_area), params: { schengen_area: { short_description: @schengen_area.short_description } }
    assert_redirected_to schengen_area_url(@schengen_area)
  end

  test "should destroy schengen_area" do
    assert_difference("SchengenArea.count", -1) do
      delete schengen_area_url(@schengen_area)
    end

    assert_redirected_to schengen_areas_url
  end
end
