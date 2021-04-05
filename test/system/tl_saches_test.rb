require "application_system_test_case"

class TlSachesTest < ApplicationSystemTestCase
  setup do
    @tl_sach = tl_saches(:one)
  end

  test "visiting the index" do
    visit tl_saches_url
    assert_selector "h1", text: "Tl Saches"
  end

  test "creating a Tl sach" do
    visit tl_saches_url
    click_on "New Tl Sach"

    fill_in "Matheloai", with: @tl_sach.matheloai
    fill_in "Tentheloai", with: @tl_sach.tentheloai
    click_on "Create Tl sach"

    assert_text "Tl sach was successfully created"
    click_on "Back"
  end

  test "updating a Tl sach" do
    visit tl_saches_url
    click_on "Edit", match: :first

    fill_in "Matheloai", with: @tl_sach.matheloai
    fill_in "Tentheloai", with: @tl_sach.tentheloai
    click_on "Update Tl sach"

    assert_text "Tl sach was successfully updated"
    click_on "Back"
  end

  test "destroying a Tl sach" do
    visit tl_saches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tl sach was successfully destroyed"
  end
end
