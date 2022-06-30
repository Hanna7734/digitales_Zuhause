class CreateZugiffsberechtigungens < ActiveRecord::Migration[7.0]
  def change
    create_table :zugiffsberechtigungens do |t|
      t.boolean :krankenhaus
      t.boolean :elternkasse
      t.boolean :familienkasse
      t.boolean :standesamt
      t.boolean :bZST

      t.timestamps
    end
  end
end
