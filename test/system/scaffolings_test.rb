require "application_system_test_case"

class ScaffolingsTest < ApplicationSystemTestCase
  setup do
    @scaffoling = scaffolings(:one)
  end

  test "visiting the index" do
    visit scaffolings_url
    assert_selector "h1", text: "Scaffolings"
  end

  test "creating a Scaffoling" do
    visit scaffolings_url
    click_on "New Scaffoling"

    click_on "Create Scaffoling"

    assert_text "Scaffoling was successfully created"
    click_on "Back"
  end

  test "updating a Scaffoling" do
    visit scaffolings_url
    click_on "Edit", match: :first

    click_on "Update Scaffoling"

    assert_text "Scaffoling was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffoling" do
    visit scaffolings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffoling was successfully destroyed"
  end
end
