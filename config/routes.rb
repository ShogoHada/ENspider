Rails.application.routes.draw do

  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:show]

  root 'games#index'

  resources :items, :only => [:index,:show],param: :word do
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'wordSearch'
    end
  end
end
