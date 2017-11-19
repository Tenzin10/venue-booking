require 'test_helper'

class VenueBookingTest < ActiveSupport::TestCase
		
	test "venue booking should be valid" do 
		assert @venue_booking = VenueBooking.new(userid: 1).valid?
	end
end
