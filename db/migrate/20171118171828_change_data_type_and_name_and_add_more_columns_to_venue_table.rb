class ChangeDataTypeAndNameAndAddMoreColumnsToVenueTable < ActiveRecord::Migration[5.0]
  def change
  	change_column :venues, :place, :string
  	add_column :venues, :street_address, :string
  	add_column :venues, :landmark, :string
  	add_column :venues, :contact_number, :string
  end
end
