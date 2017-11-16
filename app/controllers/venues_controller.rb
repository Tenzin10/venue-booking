class VenuesController < ApplicationController
before_action :set_venue, only: [:edit, :update, :show, :destroy]

def new
@venue = Venue.new
end

def edit

end

def index
  @venues = Venue.all
end

def update
  if @venue.update(venue_params)
      flash[:notice] = "Successfully updated..."
      redirect_to venue_path(@venue)
    else
      render 'edit'
  end
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

end

def destroy

  @venue.destroy
  flash[:notice] = "Venue Successfully Deleted..."
  redirect_to venues_path
end
  #define private method to safely pass the params
  private
    def venue_params
        params.require(:venue).permit(:title, :place)
    end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end #end of class
