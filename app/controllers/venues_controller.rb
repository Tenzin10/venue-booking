class VenuesController < ApplicationController
def new
@venue = Venue.new
end

def create
#render plain: params[:venue]
#create new instance varibale , pass the params and save it
@venue = Venue.new(venue_params)
@venue.save
redirect_to venues_show(@venue)
end
  #define private method to safely pass the params
  private
    def venue_params
        params.require(:venue).permit(:title, :place)
    end

end #end of class
