class RenameColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :address, :city
  end
end
