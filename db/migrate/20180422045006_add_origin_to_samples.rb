class AddOriginToSamples < ActiveRecord::Migration[5.1]
  def change
    add_column :samples, :origin, :string
  end
end
