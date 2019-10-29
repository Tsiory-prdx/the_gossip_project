Rails.application.routes.draw do
  get 'potin/show'
  get 'gossip/home', to: "gossip#home"
  get 'contact/show', to:"contact#show"
  get "team/show", to:"team#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
