class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :id
      t.integer :customer_id
      t.string :name
      t.text :body
      t.string :phone_number
      t.string :email
      t.string :url
      
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
