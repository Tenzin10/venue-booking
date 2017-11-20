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

         
end
