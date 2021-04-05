require "test_helper"

class TacgiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tacgium = tacgia(:one)
  end

  test "should get index" do
    get tacgia_url
    assert_response :success
  end

  test "should get new" do
    get new_tacgium_url
    assert_response :success
  end

  test "should create tacgium" do
    assert_difference('Tacgium.count') do
      post tacgia_url, params: { tacgium: { ghichu: @tacgium.ghichu, ma_tacgia: @tacgium.ma_tacgia, ten_tacgia: @tacgium.ten_tacgia, website: @tacgium.website } }
    end

    assert_redirected_to tacgium_url(Tacgium.last)
  end

  test "should show tacgium" do
    get tacgium_url(@tacgium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tacgium_url(@tacgium)
    assert_response :success
  end

  test "should update tacgium" do
    patch tacgium_url(@tacgium), params: { tacgium: { ghichu: @tacgium.ghichu, ma_tacgia: @tacgium.ma_tacgia, ten_tacgia: @tacgium.ten_tacgia, website: @tacgium.website } }
    assert_redirected_to tacgium_url(@tacgium)
  end

  test "should destroy tacgium" do
    assert_difference('Tacgium.count', -1) do
      delete tacgium_url(@tacgium)
    end

    assert_redirected_to tacgia_url
  end
end
