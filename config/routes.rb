Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for home page
  root 'welcome#index'
  #routes for venues
  resources :venues
end
