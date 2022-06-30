class CreateProfils < ActiveRecord::Migration[7.0]
  def change
    create_table :profils do |t|
      t.string :vorname
      t.string :nachname
      t.string :geburtsdatum
      t.string :geschlecht
      t.string :wohnort
      t.string :postleitzahl
      t.string :straße
      t.string :hausnummer
      t.string :string
      t.string :verknüpfteKonten
      t.string :steuerID

      t.timestamps
    end
  end
end
