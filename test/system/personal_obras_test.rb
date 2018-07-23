require "application_system_test_case"

class PersonalObrasTest < ApplicationSystemTestCase
  setup do
    @personal_obra = personal_obras(:one)
  end

  test "visiting the index" do
    visit personal_obras_url
    assert_selector "h1", text: "Personal Obras"
  end

  test "creating a Personal obra" do
    visit personal_obras_url
    click_on "New Personal Obra"

    click_on "Create Personal obra"

    assert_text "Personal obra was successfully created"
    click_on "Back"
  end

  test "updating a Personal obra" do
    visit personal_obras_url
    click_on "Edit", match: :first

    click_on "Update Personal obra"

    assert_text "Personal obra was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal obra" do
    visit personal_obras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal obra was successfully destroyed"
  end
end
