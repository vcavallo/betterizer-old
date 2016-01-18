Rails.application.routes.draw do
  root 'targets#index'
  resources :flavors
  resources :targets
  resources :lists
  get 'lists/:list_id/move_up/:target_id' => 'lists#bump_item', as: :bump_item
end
