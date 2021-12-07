class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integerg :id
      t.integername :customer_id
      t.string :email
      
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
