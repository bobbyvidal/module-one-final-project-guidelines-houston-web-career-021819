class NewReviewTable < ActiveRecord::Migration[5.0]
  def change
    
        create_table :customers do |t|
          t.integer :customer_id
          t.string :name
          t.timestamps
        end
    
        create_table :restaurants do |t|
          t.integer :restaurant_id
          t.string :city
        end
    
        create_table :reviews do |t|
          t.belongs_to :customers, index :true
          t.belongs_to :patient, index :true
          t.text :content
          t.integer :rating
          t.integer :affordability
          t.timestamps
        end
      
    
  end
end
