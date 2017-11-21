class WelcomeController < ApplicationController
	
  def index
  	redirect_to home_path if !current_user.venue_admin?
  end

  def home
    @venue_found = Venue.all
    if @venue_found
     #render 'new'
    else
     render status: :not_found, head: true
      end
  end
       # displays venue detail
  def show
         @venue_detail = Venue.find(params[:id])
        if @venue_detail
          "HOLA!!"
        end
  end

  def check
      if params[:venue_detail]
      @venue = Venue.find(params[:venue_detail])
      end
      if @venue
      #render json: @venue
      render partial: 'check'
    else
      render status: :not_found, nothing: true
    end
  end

  def new
    if params[:venue]
      @venue = user.Venue.find(params[:venue])
      @venue ||= venue.new_from_lookup(params[:venue])      
    end

    if @venue
      render json: @venue
      render 'check'
    else
      render status: :not_found, nothing: true
    end
    end
    def edit
      
    end

    def update
      if @article.update(article_params)
      flash[:success] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end      
    end



end
