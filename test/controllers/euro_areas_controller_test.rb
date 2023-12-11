require "test_helper"

class EuroAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @euro_area = euro_areas(:one)
  end

  test "should get index" do
    get euro_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_euro_area_url
    assert_response :success
  end

  test "should create euro_area" do
    assert_difference("EuroArea.count") do
      post euro_areas_url, params: { euro_area: { short_description: @euro_area.short_description } }
    end

    assert_redirected_to euro_area_url(EuroArea.last)
  end

  test "should show euro_area" do
    get euro_area_url(@euro_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_euro_area_url(@euro_area)
    assert_response :success
  end

  test "should update euro_area" do
    patch euro_area_url(@euro_area), params: { euro_area: { short_description: @euro_area.short_description } }
    assert_redirected_to euro_area_url(@euro_area)
  end

  test "should destroy euro_area" do
    assert_difference("EuroArea.count", -1) do
      delete euro_area_url(@euro_area)
    end

    assert_redirected_to euro_areas_url
  end
end
