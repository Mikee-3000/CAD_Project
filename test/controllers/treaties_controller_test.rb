require "test_helper"

class TreatiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treaty = treaties(:one)
  end

  test "should get index" do
    get treaties_url
    assert_response :success
  end

  test "should get new" do
    get new_treaty_url
    assert_response :success
  end

  test "should create treaty" do
    assert_difference("Treaty.count") do
      post treaties_url, params: { treaty: { active: @treaty.active, date_of_signing: @treaty.date_of_signing, name: @treaty.name, place_of_signing: @treaty.place_of_signing } }
    end

    assert_redirected_to treaty_url(Treaty.last)
  end

  test "should show treaty" do
    get treaty_url(@treaty)
    assert_response :success
  end

  test "should get edit" do
    get edit_treaty_url(@treaty)
    assert_response :success
  end

  test "should update treaty" do
    patch treaty_url(@treaty), params: { treaty: { active: @treaty.active, date_of_signing: @treaty.date_of_signing, name: @treaty.name, place_of_signing: @treaty.place_of_signing } }
    assert_redirected_to treaty_url(@treaty)
  end

  test "should destroy treaty" do
    assert_difference("Treaty.count", -1) do
      delete treaty_url(@treaty)
    end

    assert_redirected_to treaties_url
  end
end
