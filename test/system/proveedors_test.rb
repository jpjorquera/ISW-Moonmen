require "application_system_test_case"

class ProveedorsTest < ApplicationSystemTestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "visiting the index" do
    visit proveedors_url
    assert_selector "h1", text: "Proveedors"
  end

  test "creating a Proveedor" do
    visit proveedors_url
    click_on "New Proveedor"

    click_on "Create Proveedor"

    assert_text "Proveedor was successfully created"
    click_on "Back"
  end

  test "updating a Proveedor" do
    visit proveedors_url
    click_on "Edit", match: :first

    click_on "Update Proveedor"

    assert_text "Proveedor was successfully updated"
    click_on "Back"
  end

  test "destroying a Proveedor" do
    visit proveedors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proveedor was successfully destroyed"
  end
end
