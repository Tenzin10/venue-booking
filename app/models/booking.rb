class Booking < ActiveRecord::Base
	belongs_to :venue,-> { where venue_admin: true }
	belongs_to :user, -> { where venue_admin: false }
end