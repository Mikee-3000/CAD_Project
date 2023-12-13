require "test_helper"

class AreasControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @area = areas(:one)
    @user = users(:one)
  end

  test "should get index" do
    get areas_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_area_url
    assert_response :success
  end
  test "unauthenticated should not get new" do
    get new_area_url
    assert_redirected_to new_user_session_path
  end

  test "should create area" do
    sign_in @user
    assert_difference("Area.count") do
      post areas_url, params: { area: { description: @area.description, name: @area.name } }
    end
    assert_redirected_to area_url(Area.last)
  end
  test "unauthenticated should not create area" do
    post areas_url, params: { area: { description: @area.description, name: @area.name } }
    assert_redirected_to new_user_session_path
  end

  test "should show area" do
    get area_url(@area)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_area_url(@area)
    assert_response :success
  end
  test "unauthenticated should not get edit" do
    get edit_area_url(@area)
    assert_redirected_to new_user_session_path
  end

  test "should update area" do
    sign_in @user
    patch area_url(@area), params: { area: { description: @area.description, name: @area.name } }
    assert_redirected_to area_url(@area)
  end
  test "unauthenticated should not update area" do
    patch area_url(@area), params: { area: { description: @area.description, name: @area.name } }
    assert_redirected_to new_user_session_path
  end

  test "should destroy area" do
    sign_in @user
    assert_difference("Area.count", -1) do
      delete area_url(@area)
    end
    assert_redirected_to areas_url
  end
  test "unauthenticated should not destroy area" do
    delete area_url(@area)
    assert_redirected_to new_user_session_path
  end
end
