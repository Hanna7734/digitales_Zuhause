require "application_system_test_case"

class ZugiffsberechtigungensTest < ApplicationSystemTestCase
  setup do
    @zugiffsberechtigungen = zugiffsberechtigungens(:one)
  end

  test "visiting the index" do
    visit zugiffsberechtigungens_url
    assert_selector "h1", text: "Zugiffsberechtigungens"
  end

  test "should create zugiffsberechtigungen" do
    visit zugiffsberechtigungens_url
    click_on "New zugiffsberechtigungen"

    check "Bzst" if @zugiffsberechtigungen.bZST
    check "Elternkasse" if @zugiffsberechtigungen.elternkasse
    check "Familienkasse" if @zugiffsberechtigungen.familienkasse
    check "Krankenhaus" if @zugiffsberechtigungen.krankenhaus
    check "Standesamt" if @zugiffsberechtigungen.standesamt
    click_on "Create Zugiffsberechtigungen"

    assert_text "Zugiffsberechtigungen was successfully created"
    click_on "Back"
  end

  test "should update Zugiffsberechtigungen" do
    visit zugiffsberechtigungen_url(@zugiffsberechtigungen)
    click_on "Edit this zugiffsberechtigungen", match: :first

    check "Bzst" if @zugiffsberechtigungen.bZST
    check "Elternkasse" if @zugiffsberechtigungen.elternkasse
    check "Familienkasse" if @zugiffsberechtigungen.familienkasse
    check "Krankenhaus" if @zugiffsberechtigungen.krankenhaus
    check "Standesamt" if @zugiffsberechtigungen.standesamt
    click_on "Update Zugiffsberechtigungen"

    assert_text "Zugiffsberechtigungen was successfully updated"
    click_on "Back"
  end

  test "should destroy Zugiffsberechtigungen" do
    visit zugiffsberechtigungen_url(@zugiffsberechtigungen)
    click_on "Destroy this zugiffsberechtigungen", match: :first

    assert_text "Zugiffsberechtigungen was successfully destroyed"
  end
end
