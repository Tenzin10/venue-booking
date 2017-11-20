class BookingsController < ApplicationController
		before_action :only_reguler_user
	def index
		
	end

	def new
		@booking = Booking.new
	end

	def show
		
	end

	def book
		
	end


	private
		#admin cannot book venues
	def only_reguler_user
		if current_user.venue_admin? 
			flash[:danger] = "Access denied"
     		 redirect_to root_path
		end
	end
end