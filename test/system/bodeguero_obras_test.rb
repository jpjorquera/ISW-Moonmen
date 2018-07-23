require "application_system_test_case"

class BodegueroObrasTest < ApplicationSystemTestCase
  setup do
    @bodeguero_obra = bodeguero_obras(:one)
  end

  test "visiting the index" do
    visit bodeguero_obras_url
    assert_selector "h1", text: "Bodeguero Obras"
  end

  test "creating a Bodeguero obra" do
    visit bodeguero_obras_url
    click_on "New Bodeguero Obra"

    click_on "Create Bodeguero obra"

    assert_text "Bodeguero obra was successfully created"
    click_on "Back"
  end

  test "updating a Bodeguero obra" do
    visit bodeguero_obras_url
    click_on "Edit", match: :first

    click_on "Update Bodeguero obra"

    assert_text "Bodeguero obra was successfully updated"
    click_on "Back"
  end

  test "destroying a Bodeguero obra" do
    visit bodeguero_obras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bodeguero obra was successfully destroyed"
  end
end
