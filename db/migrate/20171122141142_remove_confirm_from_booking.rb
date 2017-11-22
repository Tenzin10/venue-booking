class RemoveConfirmFromBooking < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bookings,:confirm, :boolean
  end
end
