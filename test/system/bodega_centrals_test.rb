require "application_system_test_case"

class BodegaCentralsTest < ApplicationSystemTestCase
  setup do
    @bodega_central = bodega_centrals(:one)
  end

  test "visiting the index" do
    visit bodega_centrals_url
    assert_selector "h1", text: "Bodega Centrals"
  end

  test "creating a Bodega central" do
    visit bodega_centrals_url
    click_on "New Bodega Central"

    click_on "Create Bodega central"

    assert_text "Bodega central was successfully created"
    click_on "Back"
  end

  test "updating a Bodega central" do
    visit bodega_centrals_url
    click_on "Edit", match: :first

    click_on "Update Bodega central"

    assert_text "Bodega central was successfully updated"
    click_on "Back"
  end

  test "destroying a Bodega central" do
    visit bodega_centrals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bodega central was successfully destroyed"
  end
end
