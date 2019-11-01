Rails.application.routes.draw do
  get 'city/show'
  resources :gossips
  resources :welcome, only: [:index]
  resources :contact
  resources :team
  resources :user
  resources :city
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
