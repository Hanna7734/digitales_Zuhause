require "test_helper"

class ProfilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profil = profils(:one)
  end

  test "should get index" do
    get profils_url
    assert_response :success
  end

  test "should get new" do
    get new_profil_url
    assert_response :success
  end

  test "should create profil" do
    assert_difference("Profil.count") do
      post profils_url, params: { profil: { geburtsdatum: @profil.geburtsdatum, geschlecht: @profil.geschlecht, hausnummer: @profil.hausnummer, nachname: @profil.nachname, postleitzahl: @profil.postleitzahl, steuerID: @profil.steuerID, straße: @profil.straße, string: @profil.string, verknüpfteKonten: @profil.verknüpfteKonten, vorname: @profil.vorname, wohnort: @profil.wohnort } }
    end

    assert_redirected_to profil_url(Profil.last)
  end

  test "should show profil" do
    get profil_url(@profil)
    assert_response :success
  end

  test "should get edit" do
    get edit_profil_url(@profil)
    assert_response :success
  end

  test "should update profil" do
    patch profil_url(@profil), params: { profil: { geburtsdatum: @profil.geburtsdatum, geschlecht: @profil.geschlecht, hausnummer: @profil.hausnummer, nachname: @profil.nachname, postleitzahl: @profil.postleitzahl, steuerID: @profil.steuerID, straße: @profil.straße, string: @profil.string, verknüpfteKonten: @profil.verknüpfteKonten, vorname: @profil.vorname, wohnort: @profil.wohnort } }
    assert_redirected_to profil_url(@profil)
  end

  test "should destroy profil" do
    assert_difference("Profil.count", -1) do
      delete profil_url(@profil)
    end

    assert_redirected_to profils_url
  end
end
