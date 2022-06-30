class CreateMitteilungens < ActiveRecord::Migration[7.0]
  def change
    create_table :mitteilungens do |t|
      t.text :mitteilungen
      t.text :updatesVorgänge

      t.timestamps
    end
  end
end
