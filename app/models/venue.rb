class Venue < ActiveRecord::Base
  validates :title, presence: true, length: {minimum:3 , maximum:50}
  validates :place, presence: true, length: {minimum:5 , maximum:50}
end
