ActiveRecord::Schema[7.0].define(version: 2022_06_28_195002) do
  create_table "mitteilungens", force: :cascade do |t|
    t.text "mitteilungen"
    t.text "updatesVorgänge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profils", force: :cascade do |t|
    t.string "vorname"
    t.string "nachname"
    t.string "geburtsdatum"
    t.string "geschlecht"
    t.string "wohnort"
    t.string "postleitzahl"
    t.string "straße"
    t.string "hausnummer"
    t.string "string"
    t.string "verknüpfteKonten"
    t.string "steuerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "startseites", force: :cascade do |t|
    t.string "angeforderteDaten"
    t.string "letzteProzesse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zugiffsberechtigungens", force: :cascade do |t|
    t.boolean "krankenhaus"
    t.boolean "elternkasse"
    t.boolean "familienkasse"
    t.boolean "standesamt"
    t.boolean "bZST"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
