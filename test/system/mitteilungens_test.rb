require "application_system_test_case"

class MitteilungensTest < ApplicationSystemTestCase
  setup do
    @mitteilungen = mitteilungens(:one)
  end

  test "visiting the index" do
    visit mitteilungens_url
    assert_selector "h1", text: "Mitteilungens"
  end

  test "should create mitteilungen" do
    visit mitteilungens_url
    click_on "New mitteilungen"

    fill_in "Mitteilungen", with: @mitteilungen.mitteilungen
    fill_in "Updatesvorgänge", with: @mitteilungen.updatesVorgänge
    click_on "Create Mitteilungen"

    assert_text "Mitteilungen was successfully created"
    click_on "Back"
  end

  test "should update Mitteilungen" do
    visit mitteilungen_url(@mitteilungen)
    click_on "Edit this mitteilungen", match: :first

    fill_in "Mitteilungen", with: @mitteilungen.mitteilungen
    fill_in "Updatesvorgänge", with: @mitteilungen.updatesVorgänge
    click_on "Update Mitteilungen"

    assert_text "Mitteilungen was successfully updated"
    click_on "Back"
  end

  test "should destroy Mitteilungen" do
    visit mitteilungen_url(@mitteilungen)
    click_on "Destroy this mitteilungen", match: :first

    assert_text "Mitteilungen was successfully destroyed"
  end
end
