require "test_helper"

class StartseitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @startseite = startseites(:one)
  end

  test "should get index" do
    get startseites_url
    assert_response :success
  end

  test "should get new" do
    get new_startseite_url
    assert_response :success
  end

  test "should create startseite" do
    assert_difference("Startseite.count") do
      post startseites_url, params: { startseite: { angeforderteDaten: @startseite.angeforderteDaten, letzteProzesse: @startseite.letzteProzesse } }
    end

    assert_redirected_to startseite_url(Startseite.last)
  end

  test "should show startseite" do
    get startseite_url(@startseite)
    assert_response :success
  end

  test "should get edit" do
    get edit_startseite_url(@startseite)
    assert_response :success
  end

  test "should update startseite" do
    patch startseite_url(@startseite), params: { startseite: { angeforderteDaten: @startseite.angeforderteDaten, letzteProzesse: @startseite.letzteProzesse } }
    assert_redirected_to startseite_url(@startseite)
  end

  test "should destroy startseite" do
    assert_difference("Startseite.count", -1) do
      delete startseite_url(@startseite)
    end

    assert_redirected_to startseites_url
  end
end
