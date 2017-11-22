class Booking < ApplicationRecord
	belongs_to :venue
	belongs_to :user
	validates :from, presence: true
      validates :to, presence:true
      validates :on, presence:true
      validates :user_id, presence: true
      validates :venue_id, presence:true

end
