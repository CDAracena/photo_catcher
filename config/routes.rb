Rails.application.routes.draw do

devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
root to: 'home#index'
resources :users, :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
