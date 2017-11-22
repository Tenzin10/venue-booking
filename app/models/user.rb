class User < ApplicationRecord
  has_many :venues
  has_many :bookings
 has_many :booked_venues, through: :bookings, source: :venue
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #one to many association
         
         #this method retruns user's name
         def full_name
         	return "#{first_name} #{last_name}".strip if(first_name || last_name) 
         	"Anonymous"
         end

         def can_send_request?(venue_details)
          under_limit? && !request_already_sent?(venue_details)
         end

         def under_limit?
          (bookings.count <=3)
         end

         def request_already_sent?(venue_details)
          venue = Venue.find(venue_details)
          return false unless venue
          bookings.where(venue_id: venue.id).exists?   
         end

         def user_request?(venue_booking)
        booking = Booking.find(venue_booking)
          return false unless booking
          bookings.where(request: true).exists? 
        end

      def toggle_request!
    update request: !request
  end

         
end
