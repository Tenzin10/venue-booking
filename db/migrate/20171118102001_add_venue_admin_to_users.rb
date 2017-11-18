class AddVenueAdminToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :venue_admin, :boolean, default: false
  end
end
