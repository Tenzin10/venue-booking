class AddFieldsToBookings < ActiveRecord::Migration[5.0]
  def change
  	add_column :bookings, :user_id, :integer
  	add_column :bookings, :from, :string
  	add_column :bookings, :to, :string
  	add_column :bookings, :days, :integer

  end
end
