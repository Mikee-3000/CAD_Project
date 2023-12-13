require "test_helper"

class OfficialsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @official = officials(:one)
    @user = users(:one)
  end

  test "should get index" do
    get officials_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_official_url
    assert_response :success
  end
  test "unauthenticated should not get new" do
    get new_official_url
    assert_redirected_to new_user_session_path
  end

  test "should create official" do
    sign_in @user
    assert_difference("Official.count") do
      post officials_url, params: { official: { affiliation: @official.affiliation, bio: @official.bio, date_of_birth: @official.date_of_birth, institution_id: @official.institution_id, name: @official.name, place_of_birth: @official.place_of_birth, political_group_id: @official.political_group_id, position: @official.position, website: @official.website } }
    end
    assert_redirected_to official_url(Official.last)
  end
  test "unauthenticated should not create official" do
    post officials_url, params: { official: { affiliation: @official.affiliation, bio: @official.bio, date_of_birth: @official.date_of_birth, institution_id: @official.institution_id, name: @official.name, place_of_birth: @official.place_of_birth, political_group_id: @official.political_group_id, position: @official.position, website: @official.website } }
    assert_redirected_to new_user_session_path
  end

  test "should show official" do
    get official_url(@official)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_official_url(@official)
    assert_response :success
  end
  test "unauthenticated should not get edit" do
    get edit_official_url(@official)
    assert_redirected_to new_user_session_path
  end

  test "should update official" do
    sign_in @user
    patch official_url(@official), params: { official: { affiliation: @official.affiliation, bio: @official.bio, date_of_birth: @official.date_of_birth, institution_id: @official.institution_id, name: @official.name, place_of_birth: @official.place_of_birth, political_group_id: @official.political_group_id, position: @official.position, website: @official.website } }
    assert_redirected_to official_url(@official)
  end
  test "unauthenticated should not update official" do
    patch official_url(@official), params: { official: { affiliation: @official.affiliation, bio: @official.bio, date_of_birth: @official.date_of_birth, institution_id: @official.institution_id, name: @official.name, place_of_birth: @official.place_of_birth, political_group_id: @official.political_group_id, position: @official.position, website: @official.website } }
    assert_redirected_to new_user_session_path
  end

  test "should destroy official" do
    sign_in @user
    assert_difference("Official.count", -1) do
      delete official_url(@official)
    end
    assert_redirected_to officials_url
  end
  test "unauthenticated should not destroy official" do
    delete official_url(@official)
    assert_redirected_to new_user_session_path
  end
end
