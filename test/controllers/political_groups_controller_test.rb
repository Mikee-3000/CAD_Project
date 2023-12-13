require "test_helper"

class PoliticalGroupsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @political_group = political_groups(:one)
    @user = users(:one)
  end

  test "should get index" do
    get political_groups_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_political_group_url
    assert_response :success
  end
  test "unauthenticated should not get new" do
    get new_political_group_url
    assert_redirected_to new_user_session_path
  end

  test "should create political_group" do
    sign_in @user
    assert_difference("PoliticalGroup.count") do
      post political_groups_url, params: { political_group: { abbreviation: @political_group.abbreviation, current_meps: @political_group.current_meps, description: @political_group.description, name: @political_group.name, president: @political_group.president, website: @political_group.website } }
    end
    assert_redirected_to political_group_url(PoliticalGroup.last)
  end
  test "unauthenticated should not create political_group" do
    post political_groups_url, params: { political_group: { abbreviation: @political_group.abbreviation, current_meps: @political_group.current_meps, description: @political_group.description, name: @political_group.name, president: @political_group.president, website: @political_group.website } }
    assert_redirected_to new_user_session_path
  end

  test "should show political_group" do
    get political_group_url(@political_group)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_political_group_url(@political_group)
    assert_response :success
  end
  test "unauthenticated should not get edit" do
    get edit_political_group_url(@political_group)
    assert_redirected_to new_user_session_path
  end

  test "should update political_group" do
    sign_in @user
    patch political_group_url(@political_group), params: { political_group: { abbreviation: @political_group.abbreviation, current_meps: @political_group.current_meps, description: @political_group.description, name: @political_group.name, president: @political_group.president, website: @political_group.website } }
    assert_redirected_to political_group_url(@political_group)
  end
  test "unauthenticated should not update political_group" do
    patch political_group_url(@political_group), params: { political_group: { abbreviation: @political_group.abbreviation, current_meps: @political_group.current_meps, description: @political_group.description, name: @political_group.name, president: @political_group.president, website: @political_group.website } }
    assert_redirected_to new_user_session_path
  end

  test "should destroy political_group" do
    sign_in @user
    assert_difference("PoliticalGroup.count", -1) do
      delete political_group_url(@political_group)
    end
    assert_redirected_to political_groups_url
  end
  test "unauthenticated should not destroy political_group" do
    delete political_group_url(@political_group)
    assert_redirected_to new_user_session_path
  end
end
