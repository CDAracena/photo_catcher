Rails.application.routes.draw do

devise_for :users, controllers: {
    path: 'devise'
  }
root to: 'home#index'
resources :users, :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
