class CreateReviewTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.text :content
      t.integer :rating
      t.integer :affordability
    end
  end
end
