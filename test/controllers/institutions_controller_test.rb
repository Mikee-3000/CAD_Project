require "test_helper"

class InstitutionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @institution = institutions(:one)
    @user = users(:one)
  end

  test "should get index" do
    get institutions_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user
    get new_institution_url
    assert_response :success
  end
  test "unauthenticated should not get new" do
    get new_institution_url(@area)
    assert_redirected_to new_user_session_path
  end

  test "should create institution" do
    sign_in @user
    assert_difference("Institution.count") do
      post institutions_url, params: { institution: { date_established: @institution.date_established, description: @institution.description, name: @institution.name, seat: @institution.seat, website: @institution.website } }
    end
    assert_redirected_to institution_url(Institution.last)
  end
  test "unauthenticated should not create institution" do
    post institutions_url, params: { institution: { date_established: @institution.date_established, description: @institution.description, name: @institution.name, seat: @institution.seat, website: @institution.website } }
    assert_redirected_to new_user_session_path
  end

  test "should show institution" do
    get institution_url(@institution)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get edit_institution_url(@institution)
    assert_response :success
  end
  test "unauthenticated should not get edit" do
    get edit_institution_url(@institution)
    assert_redirected_to new_user_session_path
  end

  test "should update institution" do
    sign_in @user
    patch institution_url(@institution), params: { institution: { date_established: @institution.date_established, description: @institution.description, name: @institution.name, seat: @institution.seat, website: @institution.website } }
    assert_redirected_to institution_url(@institution)
  end
  test "unauthenticated should not update institution" do
    patch institution_url(@institution), params: { institution: { date_established: @institution.date_established, description: @institution.description, name: @institution.name, seat: @institution.seat, website: @institution.website } }
    assert_redirected_to new_user_session_path
  end

  test "should destroy institution" do
    sign_in @user
    assert_difference("Institution.count", -1) do
      delete institution_url(@institution)
    end
    assert_redirected_to institutions_url
  end
  test "unauthenticated should not destroy institution" do
    delete institution_url(@institution)
    assert_redirected_to new_user_session_path
  end
end
