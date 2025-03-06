class AddDrinksPackage23Column < ActiveRecord::Migration[8.0]
  def change
    add_column :registrations, :drink_package_23, :boolean
  end
end
