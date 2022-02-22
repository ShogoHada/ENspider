Rails.application.routes.draw do
  # resources :items, :only => [:index,:show],param: :word

  root 'games#index'
  # get "search" => "searches#search"

  resources :items, :only => [:index,:show],param: :word do
    collection do
      get 'wordSearch'
    end
  end
end
