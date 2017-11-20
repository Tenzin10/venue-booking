class WelcomeController < ApplicationController
	
  def index
  	redirect_to home_path if !current_user.venue_admin?
  end

  def home
  	
  end
end
