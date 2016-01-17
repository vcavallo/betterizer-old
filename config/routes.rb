Rails.application.routes.draw do
  root 'targets#index'
  resources :flavors
  resources :targets
  resources :lists
end
