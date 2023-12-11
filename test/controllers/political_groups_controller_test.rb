require "test_helper"

class PoliticalGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @political_group = political_groups(:one)
  end

  test "should get index" do
    get political_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_political_group_url
    assert_response :success
  end

  test "should create political_group" do
    assert_difference("PoliticalGroup.count") do
      post political_groups_url, params: { political_group: { abbreviation: @political_group.abbreviation, current_meps: @political_group.current_meps, link_to_website: @political_group.link_to_website, name: @political_group.name, president: @political_group.president, short_description: @political_group.short_description } }
    end

    assert_redirected_to political_group_url(PoliticalGroup.last)
  end

  test "should show political_group" do
    get political_group_url(@political_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_political_group_url(@political_group)
    assert_response :success
  end

  test "should update political_group" do
    patch political_group_url(@political_group), params: { political_group: { abbreviation: @political_group.abbreviation, current_meps: @political_group.current_meps, link_to_website: @political_group.link_to_website, name: @political_group.name, president: @political_group.president, short_description: @political_group.short_description } }
    assert_redirected_to political_group_url(@political_group)
  end

  test "should destroy political_group" do
    assert_difference("PoliticalGroup.count", -1) do
      delete political_group_url(@political_group)
    end

    assert_redirected_to political_groups_url
  end
end
