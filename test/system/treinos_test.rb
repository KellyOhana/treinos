require "application_system_test_case"

class TreinosTest < ApplicationSystemTestCase
  setup do
    @treino = treinos(:one)
  end

  test "visiting the index" do
    visit treinos_url
    assert_selector "h1", text: "Treinos"
  end

  test "should create treino" do
    visit treinos_url
    click_on "New treino"

    click_on "Create Treino"

    assert_text "Treino was successfully created"
    click_on "Back"
  end

  test "should update Treino" do
    visit treino_url(@treino)
    click_on "Edit this treino", match: :first

    click_on "Update Treino"

    assert_text "Treino was successfully updated"
    click_on "Back"
  end

  test "should destroy Treino" do
    visit treino_url(@treino)
    click_on "Destroy this treino", match: :first

    assert_text "Treino was successfully destroyed"
  end
end
