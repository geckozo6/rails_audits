class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.text :sample_type
      t.decimal :aql
      t.date :sampledate
      t.text :lot
      t.references :equipment, foreign_key: true
      t.references :auditor, foreign_key: true

      t.timestamps
    end
  end
end
