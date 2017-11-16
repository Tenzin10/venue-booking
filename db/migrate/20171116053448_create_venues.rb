class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
    t.string :title
    t.text :place
    end
  end
end
