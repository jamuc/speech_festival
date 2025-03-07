class AddAttendanceColumns < ActiveRecord::Migration[8.0]
  def change
    add_column :registrations, :attending_22nd_march, :boolean
    add_column :registrations, :attending_23rd_march, :boolean
  end
end
