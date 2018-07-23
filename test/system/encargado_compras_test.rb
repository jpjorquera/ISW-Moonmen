require "application_system_test_case"

class EncargadoComprasTest < ApplicationSystemTestCase
  setup do
    @encargado_compra = encargado_compras(:one)
  end

  test "visiting the index" do
    visit encargado_compras_url
    assert_selector "h1", text: "Encargado Compras"
  end

  test "creating a Encargado compra" do
    visit encargado_compras_url
    click_on "New Encargado Compra"

    click_on "Create Encargado compra"

    assert_text "Encargado compra was successfully created"
    click_on "Back"
  end

  test "updating a Encargado compra" do
    visit encargado_compras_url
    click_on "Edit", match: :first

    click_on "Update Encargado compra"

    assert_text "Encargado compra was successfully updated"
    click_on "Back"
  end

  test "destroying a Encargado compra" do
    visit encargado_compras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Encargado compra was successfully destroyed"
  end
end
