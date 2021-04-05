require "application_system_test_case"

class TacgiaTest < ApplicationSystemTestCase
  setup do
    @tacgium = tacgia(:one)
  end

  test "visiting the index" do
    visit tacgia_url
    assert_selector "h1", text: "Tacgia"
  end

  test "creating a Tacgium" do
    visit tacgia_url
    click_on "New Tacgium"

    fill_in "Ghichu", with: @tacgium.ghichu
    fill_in "Ma tacgia", with: @tacgium.ma_tacgia
    fill_in "Ten tacgia", with: @tacgium.ten_tacgia
    fill_in "Website", with: @tacgium.website
    click_on "Create Tacgium"

    assert_text "Tacgium was successfully created"
    click_on "Back"
  end

  test "updating a Tacgium" do
    visit tacgia_url
    click_on "Edit", match: :first

    fill_in "Ghichu", with: @tacgium.ghichu
    fill_in "Ma tacgia", with: @tacgium.ma_tacgia
    fill_in "Ten tacgia", with: @tacgium.ten_tacgia
    fill_in "Website", with: @tacgium.website
    click_on "Update Tacgium"

    assert_text "Tacgium was successfully updated"
    click_on "Back"
  end

  test "destroying a Tacgium" do
    visit tacgia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tacgium was successfully destroyed"
  end
end
