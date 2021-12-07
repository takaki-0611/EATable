class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :id
      t.integer :rest_id
      t.string :name
      t.integer :total_payment
      t.boolean :is_booked
      
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
