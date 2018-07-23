require "application_system_test_case"

class BodegueroCentralsTest < ApplicationSystemTestCase
  setup do
    @bodeguero_central = bodeguero_centrals(:one)
  end

  test "visiting the index" do
    visit bodeguero_centrals_url
    assert_selector "h1", text: "Bodeguero Centrals"
  end

  test "creating a Bodeguero central" do
    visit bodeguero_centrals_url
    click_on "New Bodeguero Central"

    click_on "Create Bodeguero central"

    assert_text "Bodeguero central was successfully created"
    click_on "Back"
  end

  test "updating a Bodeguero central" do
    visit bodeguero_centrals_url
    click_on "Edit", match: :first

    click_on "Update Bodeguero central"

    assert_text "Bodeguero central was successfully updated"
    click_on "Back"
  end

  test "destroying a Bodeguero central" do
    visit bodeguero_centrals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bodeguero central was successfully destroyed"
  end
end
