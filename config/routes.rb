Rails.application.routes.draw do

  root to: 'teams#index'
  get '/:slug', to: 'teams#show'
  resources :teams, only: [:create, :destroy]
  resources :channels, only: [:show, :create, :destroy]
  resources :talks, only: [:show]
  resources :team_users, only: [:create, :destroy]
  devise_for :users, :controllers => { registrations: 'registrations'}
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
