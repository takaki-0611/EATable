class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :kana_first_name
      t.string :kana_last_name
      t.string :postal_code
      t.string :address
      t.string :phone_number
      t.boolean :is_deleted
      
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
