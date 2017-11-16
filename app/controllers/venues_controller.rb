class VenuesController < ApplicationController
def new
@venue = Venue.new
end

def create
#render plain: params[:venue]
#validation
  @venue = Venue.new(venue_params)
    if @venue.save

    #do validations
    flash[:notice] = "Venue was successfully created..."
    redirect_to venue_path(@venue)
    else
      flash[:notice] = "Venue creation failed..."
    #render new template again
    render 'new'
    end
#create new instance varibale , pass the params and save it
#
#@venue.save

end

def show
  @venue = Venue.find(params[:id])
end
  #define private method to safely pass the params
  private
    def venue_params
        params.require(:venue).permit(:title, :place)
    end

end #end of class
