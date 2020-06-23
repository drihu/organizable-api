Rails.application.routes.draw do
  resources :user do
    resources :board
  end
  resources :board
  resources :list
  resources :card
  resources :checklist
  resources :check_item
  resources :label

end
