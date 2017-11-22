class AddDateFieldToVenue < ActiveRecord::Migration[5.0]
  def change
  	add_column :venues, :from_date, :date
  	add_column :venues, :till_date, :date
  	remove_column :venues, :days, :integer
  end
end
