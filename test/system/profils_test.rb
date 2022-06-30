require "application_system_test_case"

class ProfilsTest < ApplicationSystemTestCase
  setup do
    @profil = profils(:one)
  end

  test "visiting the index" do
    visit profils_url
    assert_selector "h1", text: "Profils"
  end

  test "should create profil" do
    visit profils_url
    click_on "New profil"

    fill_in "Geburtsdatum", with: @profil.geburtsdatum
    fill_in "Geschlecht", with: @profil.geschlecht
    fill_in "Hausnummer", with: @profil.hausnummer
    fill_in "Nachname", with: @profil.nachname
    fill_in "Postleitzahl", with: @profil.postleitzahl
    fill_in "Steuerid", with: @profil.steuerID
    fill_in "Straße", with: @profil.straße
    fill_in "String", with: @profil.string
    fill_in "Verknüpftekonten", with: @profil.verknüpfteKonten
    fill_in "Vorname", with: @profil.vorname
    fill_in "Wohnort", with: @profil.wohnort
    click_on "Create Profil"

    assert_text "Profil was successfully created"
    click_on "Back"
  end

  test "should update Profil" do
    visit profil_url(@profil)
    click_on "Edit this profil", match: :first

    fill_in "Geburtsdatum", with: @profil.geburtsdatum
    fill_in "Geschlecht", with: @profil.geschlecht
    fill_in "Hausnummer", with: @profil.hausnummer
    fill_in "Nachname", with: @profil.nachname
    fill_in "Postleitzahl", with: @profil.postleitzahl
    fill_in "Steuerid", with: @profil.steuerID
    fill_in "Straße", with: @profil.straße
    fill_in "String", with: @profil.string
    fill_in "Verknüpftekonten", with: @profil.verknüpfteKonten
    fill_in "Vorname", with: @profil.vorname
    fill_in "Wohnort", with: @profil.wohnort
    click_on "Update Profil"

    assert_text "Profil was successfully updated"
    click_on "Back"
  end

  test "should destroy Profil" do
    visit profil_url(@profil)
    click_on "Destroy this profil", match: :first

    assert_text "Profil was successfully destroyed"
  end
end
