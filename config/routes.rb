Rails.application.routes.draw do
					#for user registration this line takes controller to given path	first.
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for home page
  root 'welcome#index'
  #routes for venues
  resources :venues
  resources :bookings
end
