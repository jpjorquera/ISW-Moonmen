require "application_system_test_case"

class AbastecimientoCentralsTest < ApplicationSystemTestCase
  setup do
    @abastecimiento_central = abastecimiento_centrals(:one)
  end

  test "visiting the index" do
    visit abastecimiento_centrals_url
    assert_selector "h1", text: "Abastecimiento Centrals"
  end

  test "creating a Abastecimiento central" do
    visit abastecimiento_centrals_url
    click_on "New Abastecimiento Central"

    click_on "Create Abastecimiento central"

    assert_text "Abastecimiento central was successfully created"
    click_on "Back"
  end

  test "updating a Abastecimiento central" do
    visit abastecimiento_centrals_url
    click_on "Edit", match: :first

    click_on "Update Abastecimiento central"

    assert_text "Abastecimiento central was successfully updated"
    click_on "Back"
  end

  test "destroying a Abastecimiento central" do
    visit abastecimiento_centrals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abastecimiento central was successfully destroyed"
  end
end
