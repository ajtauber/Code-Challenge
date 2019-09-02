Rails.application.routes.draw do
  root :to => 'superheros#index'
  resources :users
  resources :superheros
end
