Rails.application.routes.draw do
  resources :bookings, except: [:new]
					#for user registration this line takes controller to given path	first.
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for home page
  resources :welcome ,except:[:destroy, :update,:create]
  resources :venues
  
  root 'welcome#index'
  get 'home', to: 'welcome#home'
 get "check", to: "welcome#check"  
  
  #post 'show_venue_detail', to: 'welcome#show_venue_detail'
  #get 'show_venue_details', to: 'bookings#show_venue_details'
  #routes for venues
  #resources :welcome
  
end
