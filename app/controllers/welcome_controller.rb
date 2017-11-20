class WelcomeController < ApplicationController
	
  def index
  	redirect_to home_path if !current_user.venue_admin?
  end

  def home
    @venue_found = Venue.all
    if @venue_found
     #render 'new'
    else
     render status: :not_found, nothing: true
      end
  end
       # displays venue detail
  def show
         @venue_detail = Venue.find(params[:id])
        if @venue_detail
          "HOLA!!"
        end
  end

  def check_availability
    if params[:venue]
      @venue = Venue.find(params[:venue])
      @venue ||= venue.new_from_lookup(params[:venue])      
    end

    if @venue
      #render json: @venue
      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
    end


end
