require "test_helper"

class ZugiffsberechtigungensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zugiffsberechtigungen = zugiffsberechtigungens(:one)
  end

  test "should get index" do
    get zugiffsberechtigungens_url
    assert_response :success
  end

  test "should get new" do
    get new_zugiffsberechtigungen_url
    assert_response :success
  end

  test "should create zugiffsberechtigungen" do
    assert_difference("Zugiffsberechtigungen.count") do
      post zugiffsberechtigungens_url, params: { zugiffsberechtigungen: { bZST: @zugiffsberechtigungen.bZST, elternkasse: @zugiffsberechtigungen.elternkasse, familienkasse: @zugiffsberechtigungen.familienkasse, krankenhaus: @zugiffsberechtigungen.krankenhaus, standesamt: @zugiffsberechtigungen.standesamt } }
    end

    assert_redirected_to zugiffsberechtigungen_url(Zugiffsberechtigungen.last)
  end

  test "should show zugiffsberechtigungen" do
    get zugiffsberechtigungen_url(@zugiffsberechtigungen)
    assert_response :success
  end

  test "should get edit" do
    get edit_zugiffsberechtigungen_url(@zugiffsberechtigungen)
    assert_response :success
  end

  test "should update zugiffsberechtigungen" do
    patch zugiffsberechtigungen_url(@zugiffsberechtigungen), params: { zugiffsberechtigungen: { bZST: @zugiffsberechtigungen.bZST, elternkasse: @zugiffsberechtigungen.elternkasse, familienkasse: @zugiffsberechtigungen.familienkasse, krankenhaus: @zugiffsberechtigungen.krankenhaus, standesamt: @zugiffsberechtigungen.standesamt } }
    assert_redirected_to zugiffsberechtigungen_url(@zugiffsberechtigungen)
  end

  test "should destroy zugiffsberechtigungen" do
    assert_difference("Zugiffsberechtigungen.count", -1) do
      delete zugiffsberechtigungen_url(@zugiffsberechtigungen)
    end

    assert_redirected_to zugiffsberechtigungens_url
  end
end
