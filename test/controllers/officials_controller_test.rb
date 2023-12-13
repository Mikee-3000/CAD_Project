require "test_helper"

class OfficialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @official = officials(:one)
  end

  test "should get index" do
    get officials_url
    assert_response :success
  end

  test "should get new" do
    get new_official_url
    assert_response :success
  end

  test "should create official" do
    assert_difference("Official.count") do
      post officials_url, params: { official: { affiliation: @official.affiliation, bio: @official.bio, date_of_birth: @official.date_of_birth, institution_id: @official.institution_id, name: @official.name, place_of_birth: @official.place_of_birth, political_group_id: @official.political_group_id, position: @official.position, website: @official.website } }
    end

    assert_redirected_to official_url(Official.last)
  end

  test "should show official" do
    get official_url(@official)
    assert_response :success
  end

  test "should get edit" do
    get edit_official_url(@official)
    assert_response :success
  end

  test "should update official" do
    patch official_url(@official), params: { official: { affiliation: @official.affiliation, bio: @official.bio, date_of_birth: @official.date_of_birth, institution_id: @official.institution_id, name: @official.name, place_of_birth: @official.place_of_birth, political_group_id: @official.political_group_id, position: @official.position, website: @official.website } }
    assert_redirected_to official_url(@official)
  end

  test "should destroy official" do
    assert_difference("Official.count", -1) do
      delete official_url(@official)
    end

    assert_redirected_to officials_url
  end
end
