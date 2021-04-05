require "application_system_test_case"

class Sach23sTest < ApplicationSystemTestCase
  setup do
    @sach23 = sach23s(:one)
  end

  test "visiting the index" do
    visit sach23s_url
    assert_selector "h1", text: "Sach23s"
  end

  test "creating a Sach23" do
    visit sach23s_url
    click_on "New Sach23"

    fill_in "Ghichu", with: @sach23.ghichu
    fill_in "Ma tacgia", with: @sach23.ma_tacgia
    fill_in "Ten tacgia", with: @sach23.ten_tacgia
    fill_in "Website", with: @sach23.website
    click_on "Create Sach23"

    assert_text "Sach23 was successfully created"
    click_on "Back"
  end

  test "updating a Sach23" do
    visit sach23s_url
    click_on "Edit", match: :first

    fill_in "Ghichu", with: @sach23.ghichu
    fill_in "Ma tacgia", with: @sach23.ma_tacgia
    fill_in "Ten tacgia", with: @sach23.ten_tacgia
    fill_in "Website", with: @sach23.website
    click_on "Update Sach23"

    assert_text "Sach23 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sach23" do
    visit sach23s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sach23 was successfully destroyed"
  end
end
