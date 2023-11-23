require "application_system_test_case"

class TreinosProntosTest < ApplicationSystemTestCase
  setup do
    @treinos_pronto = treinos_prontos(:one)
  end

  test "visiting the index" do
    visit treinos_prontos_url
    assert_selector "h1", text: "Treinos prontos"
  end

  test "should create treinos pronto" do
    visit treinos_prontos_url
    click_on "New treinos pronto"

    click_on "Create Treinos pronto"

    assert_text "Treinos pronto was successfully created"
    click_on "Back"
  end

  test "should update Treinos pronto" do
    visit treinos_pronto_url(@treinos_pronto)
    click_on "Edit this treinos pronto", match: :first

    click_on "Update Treinos pronto"

    assert_text "Treinos pronto was successfully updated"
    click_on "Back"
  end

  test "should destroy Treinos pronto" do
    visit treinos_pronto_url(@treinos_pronto)
    click_on "Destroy this treinos pronto", match: :first

    assert_text "Treinos pronto was successfully destroyed"
  end
end
