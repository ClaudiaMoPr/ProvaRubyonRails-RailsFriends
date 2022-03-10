require "application_system_test_case"

class Scaffoling2sTest < ApplicationSystemTestCase
  setup do
    @scaffoling2 = scaffoling2s(:one)
  end

  test "visiting the index" do
    visit scaffoling2s_url
    assert_selector "h1", text: "Scaffoling2s"
  end

  test "creating a Scaffoling2" do
    visit scaffoling2s_url
    click_on "New Scaffoling2"

    fill_in "Email", with: @scaffoling2.email
    fill_in "First name", with: @scaffoling2.first_name
    fill_in "Last name", with: @scaffoling2.last_name
    fill_in "Phone", with: @scaffoling2.phone
    fill_in "Twitter", with: @scaffoling2.twitter
    click_on "Create Scaffoling2"

    assert_text "Scaffoling2 was successfully created"
    click_on "Back"
  end

  test "updating a Scaffoling2" do
    visit scaffoling2s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @scaffoling2.email
    fill_in "First name", with: @scaffoling2.first_name
    fill_in "Last name", with: @scaffoling2.last_name
    fill_in "Phone", with: @scaffoling2.phone
    fill_in "Twitter", with: @scaffoling2.twitter
    click_on "Update Scaffoling2"

    assert_text "Scaffoling2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffoling2" do
    visit scaffoling2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffoling2 was successfully destroyed"
  end
end
