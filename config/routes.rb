Rails.application.routes.draw do
  resources :users do
    resources :boards
  end
  resources :boards
  resources :lists
  resources :checklists
  resources :check_items
  resources :labels

  post 'cards/:card_id/cards_labels', to: 'cards_labels#create'
  delete 'cards/:card_id/cards_labels', to: 'cards_labels#destroy'

  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
end
