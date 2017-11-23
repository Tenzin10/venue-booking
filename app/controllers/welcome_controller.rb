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
         @venue = Venue.find(params[:id])
        if @venue
          "HOLA!!"
        end
  end

  def check
      if params[:venue_detail]
      @venue_found = Venue.find(params[:venue_detail])
      @timings = Venue.where("from: :from",{from: params['from']})
      end
      if @timings
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
      render partial: 'lookup'
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

    def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end



end
