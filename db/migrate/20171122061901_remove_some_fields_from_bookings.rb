class RemoveSomeFieldsFromBookings < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bookings, :from_date, :date
  	remove_column :bookings, :till_date, :date
  	add_column :bookings, :on, :date 
  end
end
