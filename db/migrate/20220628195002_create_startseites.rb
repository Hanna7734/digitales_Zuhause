class CreateStartseites < ActiveRecord::Migration[7.0]
  def change
    create_table :startseites do |t|
      t.string :angeforderteDaten
      t.string :letzteProzesse

      t.timestamps
    end
  end
end
