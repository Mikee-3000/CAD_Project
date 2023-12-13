require "test_helper"

class MemberStatesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @member_state = member_states(:one)
    @user = users(:one)
  end

  test "should get index" do
    get member_states_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_member_state_url
    assert_response :success
  end
  test "unauthenticated should not get new" do
    get new_member_state_url(@area)
    assert_redirected_to new_user_session_path
  end

  test "should create member_state" do
    sign_in @user
    assert_difference("MemberState.count") do
      post member_states_url, params: { member_state: { capital: @member_state.capital, entry_date: @member_state.entry_date, name: @member_state.name, number_meps: @member_state.number_meps, population: @member_state.population } }
    end
    assert_redirected_to member_state_url(MemberState.last)
  end
  test "unauthenticated should not create member_state" do
    post member_states_url, params: { member_state: { capital: @member_state.capital, entry_date: @member_state.entry_date, name: @member_state.name, number_meps: @member_state.number_meps, population: @member_state.population } }
    assert_redirected_to new_user_session_path
  end

  test "should show member_state" do
    get member_state_url(@member_state)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_member_state_url(@member_state)
    assert_response :success
  end
  test "unauthenticated should not get edit" do
    get new_member_state_url(@area)
    assert_redirected_to new_user_session_path
  end

  test "should update member_state" do
    sign_in @user
    patch member_state_url(@member_state), params: { member_state: { capital: @member_state.capital, entry_date: @member_state.entry_date, name: @member_state.name, number_meps: @member_state.number_meps, population: @member_state.population } }
    assert_redirected_to member_state_url(@member_state)
  end
  test "unauthenticated should not update member_state" do
    patch member_state_url(@member_state), params: { member_state: { capital: @member_state.capital, entry_date: @member_state.entry_date, name: @member_state.name, number_meps: @member_state.number_meps, population: @member_state.population } }
    assert_redirected_to new_user_session_path
  end

  test "should destroy member_state" do
    sign_in @user
    assert_difference("MemberState.count", -1) do
      delete member_state_url(@member_state)
    end
    assert_redirected_to member_states_url
  end
  test "unauthenticated should not destroy member_state" do
    delete member_state_url(@member_state)
    assert_redirected_to new_user_session_path
  end
end
