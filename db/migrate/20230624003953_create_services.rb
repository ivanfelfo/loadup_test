class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :first_name
      t.string :last_name
      t.string :animal_name
      t.boolean :animal_type
      t.integer :hours_requested
      t.date :date_of_service
      t.timestamps
    end
  end
end
