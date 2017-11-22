class AddForiegnKeyReferenceToBooking < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :bookings, :users
  	add_foreign_key :bookings, :venues
  end
end
