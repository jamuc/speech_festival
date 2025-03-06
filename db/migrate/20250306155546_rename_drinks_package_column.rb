class RenameDrinksPackageColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :registrations, :drink_package, :drink_package_22
  end
end
