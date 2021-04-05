require "test_helper"

class Sach23sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sach23 = sach23s(:one)
  end

  test "should get index" do
    get sach23s_url
    assert_response :success
  end

  test "should get new" do
    get new_sach23_url
    assert_response :success
  end

  test "should create sach23" do
    assert_difference('Sach23.count') do
      post sach23s_url, params: { sach23: { ghichu: @sach23.ghichu, ma_tacgia: @sach23.ma_tacgia, ten_tacgia: @sach23.ten_tacgia, website: @sach23.website } }
    end

    assert_redirected_to sach23_url(Sach23.last)
  end

  test "should show sach23" do
    get sach23_url(@sach23)
    assert_response :success
  end

  test "should get edit" do
    get edit_sach23_url(@sach23)
    assert_response :success
  end

  test "should update sach23" do
    patch sach23_url(@sach23), params: { sach23: { ghichu: @sach23.ghichu, ma_tacgia: @sach23.ma_tacgia, ten_tacgia: @sach23.ten_tacgia, website: @sach23.website } }
    assert_redirected_to sach23_url(@sach23)
  end

  test "should destroy sach23" do
    assert_difference('Sach23.count', -1) do
      delete sach23_url(@sach23)
    end

    assert_redirected_to sach23s_url
  end
end
