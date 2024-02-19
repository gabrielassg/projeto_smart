require "application_system_test_case"

class PlanosTest < ApplicationSystemTestCase
  setup do
    @plano = planos(:one)
  end

  test "visiting the index" do
    visit planos_url
    assert_selector "h1", text: "Planos"
  end

  test "should create plano" do
    visit planos_url
    click_on "New plano"

    fill_in "Description", with: @plano.description
    click_on "Create Plano"

    assert_text "Plano was successfully created"
    click_on "Back"
  end

  test "should update Plano" do
    visit plano_url(@plano)
    click_on "Edit this plano", match: :first

    fill_in "Description", with: @plano.description
    click_on "Update Plano"

    assert_text "Plano was successfully updated"
    click_on "Back"
  end

  test "should destroy Plano" do
    visit plano_url(@plano)
    click_on "Destroy this plano", match: :first

    assert_text "Plano was successfully destroyed"
  end
end
