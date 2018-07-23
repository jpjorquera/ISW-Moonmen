require "application_system_test_case"

class InventarioCentralsTest < ApplicationSystemTestCase
  setup do
    @inventario_central = inventario_centrals(:one)
  end

  test "visiting the index" do
    visit inventario_centrals_url
    assert_selector "h1", text: "Inventario Centrals"
  end

  test "creating a Inventario central" do
    visit inventario_centrals_url
    click_on "New Inventario Central"

    click_on "Create Inventario central"

    assert_text "Inventario central was successfully created"
    click_on "Back"
  end

  test "updating a Inventario central" do
    visit inventario_centrals_url
    click_on "Edit", match: :first

    click_on "Update Inventario central"

    assert_text "Inventario central was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventario central" do
    visit inventario_centrals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventario central was successfully destroyed"
  end
end
