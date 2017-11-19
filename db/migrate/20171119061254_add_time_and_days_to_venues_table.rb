class AddTimeAndDaysToVenuesTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :venues, :from, :string
  	add_column :venues, :to, :string
  	add_column :venues, :days, :integer
  end
end
