require "application_system_test_case"

class AbastecimientoObrasTest < ApplicationSystemTestCase
  setup do
    @abastecimiento_obra = abastecimiento_obras(:one)
  end

  test "visiting the index" do
    visit abastecimiento_obras_url
    assert_selector "h1", text: "Abastecimiento Obras"
  end

  test "creating a Abastecimiento obra" do
    visit abastecimiento_obras_url
    click_on "New Abastecimiento Obra"

    click_on "Create Abastecimiento obra"

    assert_text "Abastecimiento obra was successfully created"
    click_on "Back"
  end

  test "updating a Abastecimiento obra" do
    visit abastecimiento_obras_url
    click_on "Edit", match: :first

    click_on "Update Abastecimiento obra"

    assert_text "Abastecimiento obra was successfully updated"
    click_on "Back"
  end

  test "destroying a Abastecimiento obra" do
    visit abastecimiento_obras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abastecimiento obra was successfully destroyed"
  end
end
