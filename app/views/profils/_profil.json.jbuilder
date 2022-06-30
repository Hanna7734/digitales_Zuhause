json.extract! profil, :id, :vorname, :nachname, :geburtsdatum, :geschlecht, :wohnort, :postleitzahl, :straße, :hausnummer, :string, :verknüpfteKonten, :steuerID, :created_at, :updated_at
json.url profil_url(profil, format: :json)
