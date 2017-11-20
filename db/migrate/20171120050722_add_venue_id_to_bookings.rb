class AddVenueIdToBookings < ActiveRecord::Migration[5.0]
  def change
  	add_column :bookings, :venue_id, :integer
  end
end
