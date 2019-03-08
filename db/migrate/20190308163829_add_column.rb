class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :restaurant_name, :string
  end
end
