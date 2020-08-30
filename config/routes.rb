Rails.application.routes.draw do
  get 'potatoes/index'
  get 'potatoes', to: 'potatoes#index'
  resources :potatoes
  root 'potatoes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
