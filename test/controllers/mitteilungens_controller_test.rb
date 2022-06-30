require "test_helper"

class MitteilungensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mitteilungen = mitteilungens(:one)
  end

  test "should get index" do
    get mitteilungens_url
    assert_response :success
  end

  test "should get new" do
    get new_mitteilungen_url
    assert_response :success
  end

  test "should create mitteilungen" do
    assert_difference("Mitteilungen.count") do
      post mitteilungens_url, params: { mitteilungen: { mitteilungen: @mitteilungen.mitteilungen, updatesVorgänge: @mitteilungen.updatesVorgänge } }
    end

    assert_redirected_to mitteilungen_url(Mitteilungen.last)
  end

  test "should show mitteilungen" do
    get mitteilungen_url(@mitteilungen)
    assert_response :success
  end

  test "should get edit" do
    get edit_mitteilungen_url(@mitteilungen)
    assert_response :success
  end

  test "should update mitteilungen" do
    patch mitteilungen_url(@mitteilungen), params: { mitteilungen: { mitteilungen: @mitteilungen.mitteilungen, updatesVorgänge: @mitteilungen.updatesVorgänge } }
    assert_redirected_to mitteilungen_url(@mitteilungen)
  end

  test "should destroy mitteilungen" do
    assert_difference("Mitteilungen.count", -1) do
      delete mitteilungen_url(@mitteilungen)
    end

    assert_redirected_to mitteilungens_url
  end
end
