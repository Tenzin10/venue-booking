class VenuesController < ApplicationController
before_action :set_venue, only: [:edit, :update, :show, :destroy]
before_action :require_venue_admin, only: [:edit, :update, :show, :destroy,:new, :index]
before_action :require_same_venue_admin, only: [:edit, :update, :show, :destroy,]
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
#debugger
  @venue = Venue.new(venue_params)
  @venue.user = current_user
    if @venue.save

    #do validations
    flash[:notice] = "Venue was successfully created..."
    redirect_to venue_path(@venue)
    else
      flash[:danger] = "Venue creation failed..."
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
  flash[:danger] = "Venue Successfully Deleted..."
  redirect_to venues_path
end
  #define private method to safely pass the params
  private
    def venue_params
        params.require(:venue).permit(:title, :place,:street_address, :landmark,:contact_number,:from,:to,:days)
    end

  def set_venue
    @venue = Venue.find(params[:id])
  end
  def require_venue_admin
    if !current_user.venue_admin?
      flash[:danger] = "Access denied"
      redirect_to root_path
    end
  end
 def require_same_venue_admin
    if current_user != @venue.user
      flash[:danger] = "Access denied"
      redirect_to root_path
    end
  end
end #end of class
