class AddFailureToPieces < ActiveRecord::Migration[5.1]
  def change
    add_column :pieces, :failure, :string
  end
end
