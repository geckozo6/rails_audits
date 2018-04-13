class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.text :equipment_type
      t.text :vendor
      t.text :service

      t.timestamps
    end
  end
end
