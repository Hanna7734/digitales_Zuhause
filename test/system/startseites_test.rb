require "application_system_test_case"

class StartseitesTest < ApplicationSystemTestCase
  setup do
    @startseite = startseites(:one)
  end

  test "visiting the index" do
    visit startseites_url
    assert_selector "h1", text: "Startseites"
  end

  test "should create startseite" do
    visit startseites_url
    click_on "New startseite"

    fill_in "Angefordertedaten", with: @startseite.angeforderteDaten
    fill_in "Letzteprozesse", with: @startseite.letzteProzesse
    click_on "Create Startseite"

    assert_text "Startseite was successfully created"
    click_on "Back"
  end

  test "should update Startseite" do
    visit startseite_url(@startseite)
    click_on "Edit this startseite", match: :first

    fill_in "Angefordertedaten", with: @startseite.angeforderteDaten
    fill_in "Letzteprozesse", with: @startseite.letzteProzesse
    click_on "Update Startseite"

    assert_text "Startseite was successfully updated"
    click_on "Back"
  end

  test "should destroy Startseite" do
    visit startseite_url(@startseite)
    click_on "Destroy this startseite", match: :first

    assert_text "Startseite was successfully destroyed"
  end
end
