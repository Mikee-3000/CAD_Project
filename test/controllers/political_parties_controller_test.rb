require "test_helper"

class PoliticalPartiesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @political_party = political_parties(:one)
    @user = users(:one)
  end

  test "should get index" do
    get political_parties_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_political_party_url
    assert_response :success
  end
  test "unauthenticated should not get new" do
    get new_political_party_url
    assert_redirected_to new_user_session_path
  end

  test "should create political_party" do
    sign_in @user
    assert_difference("PoliticalParty.count") do
      post political_parties_url, params: { political_party: { name: @political_party.name, political_group_id: @political_party.political_group_id } }
    end
    assert_redirected_to political_party_url(PoliticalParty.last)
  end
  test "unauthenticated should not create political_party" do
    post political_parties_url, params: { political_party: { name: @political_party.name, political_group_id: @political_party.political_group_id } }
    assert_redirected_to new_user_session_path
  end

  test "should show political_party" do
    get political_party_url(@political_party)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_political_party_url(@political_party)
    assert_response :success
  end
  test "unauthenticated should not get edit" do
    get edit_political_party_url(@political_party)
    assert_redirected_to new_user_session_path
  end

  test "should update political_party" do
    sign_in @user
    patch political_party_url(@political_party), params: { political_party: { name: @political_party.name, political_group_id: @political_party.political_group_id } }
    assert_redirected_to political_party_url(@political_party)
  end
  test "unauthenticated should not update political_party" do
    patch political_party_url(@political_party), params: { political_party: { name: @political_party.name, political_group_id: @political_party.political_group_id } }
    assert_redirected_to new_user_session_path
  end

  test "should destroy political_party" do
    sign_in @user
    assert_difference("PoliticalParty.count", -1) do
      delete political_party_url(@political_party)
    end
    assert_redirected_to political_parties_url
  end
  test "unauthenticated should not destroy political_party" do
    delete political_party_url(@political_party)
    assert_redirected_to new_user_session_path
  end
end
