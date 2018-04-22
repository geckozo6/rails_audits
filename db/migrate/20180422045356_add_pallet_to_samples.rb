class AddPalletToSamples < ActiveRecord::Migration[5.1]
  def change
    add_column :samples, :pallet, :string
  end
end
