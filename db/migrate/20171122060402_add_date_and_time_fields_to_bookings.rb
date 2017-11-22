class AddDateAndTimeFieldsToBookings < ActiveRecord::Migration[5.0]
  def change
  	add_column :bookings, :from_date, :date
  	add_column :bookings, :till_date, :date
  	add_column :bookings, :from, :string
  	add_column :bookings, :to, :string
  end
end
