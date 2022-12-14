Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cities, only: [:index, :show]
      resources :favorites, only: [:create]
      resources :users, only: [:index, :create]

      get '/favorites/:id', to: 'favorites#index'
      delete '/favorites', to: 'favorites#destroy'
    end
  end

end
