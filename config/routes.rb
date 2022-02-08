Rails.application.routes.draw do
  resources :items,param: :word

  root 'games#index'
  # get 'index' => 'items#index'
  get 'search' => 'items#search'
end
