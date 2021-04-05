require "application_system_test_case"

class TheloaisachesTest < ApplicationSystemTestCase
  setup do
    @theloaisach = theloaisaches(:one)
  end

  test "visiting the index" do
    visit theloaisaches_url
    assert_selector "h1", text: "Theloaisaches"
  end

  test "creating a Theloaisach" do
    visit theloaisaches_url
    click_on "New Theloaisach"

    fill_in "Manxb", with: @theloaisach.maNXB
    fill_in "Ma sach", with: @theloaisach.ma_sach
    fill_in "Mtg", with: @theloaisach.mtg
    fill_in "Mtl", with: @theloaisach.mtl
    fill_in "Nxb", with: @theloaisach.nxb
    fill_in "Ten sach", with: @theloaisach.ten_sach
    click_on "Create Theloaisach"

    assert_text "Theloaisach was successfully created"
    click_on "Back"
  end

  test "updating a Theloaisach" do
    visit theloaisaches_url
    click_on "Edit", match: :first

    fill_in "Manxb", with: @theloaisach.maNXB
    fill_in "Ma sach", with: @theloaisach.ma_sach
    fill_in "Mtg", with: @theloaisach.mtg
    fill_in "Mtl", with: @theloaisach.mtl
    fill_in "Nxb", with: @theloaisach.nxb
    fill_in "Ten sach", with: @theloaisach.ten_sach
    click_on "Update Theloaisach"

    assert_text "Theloaisach was successfully updated"
    click_on "Back"
  end

  test "destroying a Theloaisach" do
    visit theloaisaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Theloaisach was successfully destroyed"
  end
end
