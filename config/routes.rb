Rails.application.routes.draw do
					#for user registration this line takes controller to given path	first.
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for home page
  root 'welcome#index'
  get 'home', to: 'welcome#home'
  get 'check_availability', to: 'welcome#check_availability'  
  resources :welcome
  resources :venues
  resources :bookings, except:[:create]
 
  #post 'show_venue_detail', to: 'welcome#show_venue_detail'
  get 'show_venue_details', to: 'bookings#show_venue_details'
  #routes for venues
  #resources :welcome
  
end
