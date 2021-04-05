require "test_helper"

class TheloaisachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theloaisach = theloaisaches(:one)
  end

  test "should get index" do
    get theloaisaches_url
    assert_response :success
  end

  test "should get new" do
    get new_theloaisach_url
    assert_response :success
  end

  test "should create theloaisach" do
    assert_difference('Theloaisach.count') do
      post theloaisaches_url, params: { theloaisach: { maNXB: @theloaisach.maNXB, ma_sach: @theloaisach.ma_sach, mtg: @theloaisach.mtg, mtl: @theloaisach.mtl, nxb: @theloaisach.nxb, ten_sach: @theloaisach.ten_sach } }
    end

    assert_redirected_to theloaisach_url(Theloaisach.last)
  end

  test "should show theloaisach" do
    get theloaisach_url(@theloaisach)
    assert_response :success
  end

  test "should get edit" do
    get edit_theloaisach_url(@theloaisach)
    assert_response :success
  end

  test "should update theloaisach" do
    patch theloaisach_url(@theloaisach), params: { theloaisach: { maNXB: @theloaisach.maNXB, ma_sach: @theloaisach.ma_sach, mtg: @theloaisach.mtg, mtl: @theloaisach.mtl, nxb: @theloaisach.nxb, ten_sach: @theloaisach.ten_sach } }
    assert_redirected_to theloaisach_url(@theloaisach)
  end

  test "should destroy theloaisach" do
    assert_difference('Theloaisach.count', -1) do
      delete theloaisach_url(@theloaisach)
    end

    assert_redirected_to theloaisaches_url
  end
end
