Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'signup', to: 'users#create'
  post 'logout', to: 'posts#index'

  resources :users, only: :show
  resources :sessions
  resources :posts do
      resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'posts#index'
end
