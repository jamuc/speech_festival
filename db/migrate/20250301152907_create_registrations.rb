class CreateRegistrations < ActiveRecord::Migration[8.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.boolean :drink_package
      t.boolean :lunch
      t.boolean :social_event

      t.timestamps
    end
  end
end
