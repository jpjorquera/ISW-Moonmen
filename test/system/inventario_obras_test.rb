require "application_system_test_case"

class InventarioObrasTest < ApplicationSystemTestCase
  setup do
    @inventario_obra = inventario_obras(:one)
  end

  test "visiting the index" do
    visit inventario_obras_url
    assert_selector "h1", text: "Inventario Obras"
  end

  test "creating a Inventario obra" do
    visit inventario_obras_url
    click_on "New Inventario Obra"

    click_on "Create Inventario obra"

    assert_text "Inventario obra was successfully created"
    click_on "Back"
  end

  test "updating a Inventario obra" do
    visit inventario_obras_url
    click_on "Edit", match: :first

    click_on "Update Inventario obra"

    assert_text "Inventario obra was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventario obra" do
    visit inventario_obras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventario obra was successfully destroyed"
  end
end
