class Venue < ActiveRecord::Base
	#many venues can belong to one user
	belongs_to :user,:class_name => 'User'
  has_many :bookings
  has_many :booker, through: :bookings, source: :user
  validates :title, presence: true, length: {minimum:3 , maximum:50}
  validates :place, presence: true, length: {minimum:5 , maximum:50}
  validates :street_address, presence: true, length: {minimum:3 , maximum:30}
    validates :contact_number, presence: true, length: {minimum:6 , maximum:10}
      validates :landmark, presence: true, length: {minimum:3 , maximum:20}
      #debugger
      validates :from, presence: true
      validates :to, presence:true
      validates :from_date, presence:true
      validates :till_date, presence:true
  validates :user_id, presence: true 
  


 # def self.find_venue_by_id(venue_id)
  #  where(venue_id: venue_id).first
 # end
end
