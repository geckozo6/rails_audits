class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.text :serie
      t.text :cmac
      t.text :emac
      t.boolean :status
      t.references :sample, foreign_key: true

      t.timestamps
    end
  end
end
