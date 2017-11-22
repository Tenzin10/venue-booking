class AddRequestFieldToBookings < ActiveRecord::Migration[5.0]
  def change
  	add_column :bookings, :request, :boolean, default: false
  	add_column :bookings, :confirm, :boolean, default: false

  end
end
