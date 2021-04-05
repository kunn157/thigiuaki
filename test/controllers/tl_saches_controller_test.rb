require "test_helper"

class TlSachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tl_sach = tl_saches(:one)
  end

  test "should get index" do
    get tl_saches_url
    assert_response :success
  end

  test "should get new" do
    get new_tl_sach_url
    assert_response :success
  end

  test "should create tl_sach" do
    assert_difference('TlSach.count') do
      post tl_saches_url, params: { tl_sach: { matheloai: @tl_sach.matheloai, tentheloai: @tl_sach.tentheloai } }
    end

    assert_redirected_to tl_sach_url(TlSach.last)
  end

  test "should show tl_sach" do
    get tl_sach_url(@tl_sach)
    assert_response :success
  end

  test "should get edit" do
    get edit_tl_sach_url(@tl_sach)
    assert_response :success
  end

  test "should update tl_sach" do
    patch tl_sach_url(@tl_sach), params: { tl_sach: { matheloai: @tl_sach.matheloai, tentheloai: @tl_sach.tentheloai } }
    assert_redirected_to tl_sach_url(@tl_sach)
  end

  test "should destroy tl_sach" do
    assert_difference('TlSach.count', -1) do
      delete tl_sach_url(@tl_sach)
    end

    assert_redirected_to tl_saches_url
  end
end
