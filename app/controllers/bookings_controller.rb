class BookingsController < ApplicationController
		before_action :only_reguler_user
	def index
		 @booking = Booking.all
	end

	def new
		@booking = Booking.new
	end

	

	def create
    if params[:venue_id].present?
      @user_venue = Booking.new(venue_id: params[:venue_id], user: current_user)
        
      else
        venue = venue.find(params[:venue_id])
        if venue
        @user_venue = Booking.new( user: current_user, venue: venue)
        
          if venue.save
            @user_venue = Booking.new(user: current_user, venue: venue)
          else
            @user_venue = nil
            flash[:error] = "venue is not available"
          end
        end
    end
    
    respond_to do |format|
      if @user_venue.save
        format.html { redirect_to my_portfolio_path, notice: "venue #{@user_venue.venue.ticker} was successfully added" }
        format.json { render :show, status: :created, location: @user_venue }
      else
        format.html { render :new }
        format.json { render json: @user_venue.errors, status: :unprocessable_entity }
      end
    end
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