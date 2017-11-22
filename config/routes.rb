Rails.application.routes.draw do
  resources :bookings
					#for user registration this line takes controller to given path	first.
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for home page
  resources :welcome ,except:[:destroy, :update,:create]
  resources :venues 


 

  

  root 'welcome#index'
  get 'home', to: 'welcome#home'
 post "check", to: "welcome#check"
 get 'approve_requests', to: "venues#approve_requests"
 get 'user_request', to: "venues#user_request"  
 get 'all_bookings', to: 'venues#all_bookings'
 get 'cancel_request', to: 'venues#cancel_request'

  
  #post 'show_venue_detail', to: 'welcome#show_venue_detail'
  #get 'show_venue_details', to: 'bookings#show_venue_details'
  #routes for venues
  #resources :welcome
  
end
