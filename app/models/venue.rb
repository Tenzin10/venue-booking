class Venue < ActiveRecord::Base
	#many venues can belong to one user
	belongs_to :user
  validates :title, presence: true, length: {minimum:3 , maximum:50}
  validates :place, presence: true, length: {minimum:5 , maximum:50}

  validates :user_id, presence: true 
end
