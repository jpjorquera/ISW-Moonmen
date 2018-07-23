require "application_system_test_case"

class OrdenComprasTest < ApplicationSystemTestCase
  setup do
    @orden_compra = orden_compras(:one)
  end

  test "visiting the index" do
    visit orden_compras_url
    assert_selector "h1", text: "Orden Compras"
  end

  test "creating a Orden compra" do
    visit orden_compras_url
    click_on "New Orden Compra"

    click_on "Create Orden compra"

    assert_text "Orden compra was successfully created"
    click_on "Back"
  end

  test "updating a Orden compra" do
    visit orden_compras_url
    click_on "Edit", match: :first

    click_on "Update Orden compra"

    assert_text "Orden compra was successfully updated"
    click_on "Back"
  end

  test "destroying a Orden compra" do
    visit orden_compras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orden compra was successfully destroyed"
  end
end
