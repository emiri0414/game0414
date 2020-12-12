Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  namespace :admin do
  get 'games' => 'games/top'
  resources :games, only: [:index, :new, :create, :show, :edit, :update]
  resources :genres, only: [:index, :create, :edit, :update]
  resources :years, only: [:index, :create, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]
  resources :reviews, only: [:index, :show, :uodate]
  end

  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}

  root 'homes#top'
  get 'games' => 'games#ps4'
  get 'games' => 'games#switch'
  get 'games' => 'games#genre'
  get 'games' => 'games#year'
  get 'games' => 'games#show'
  resources :end_users, only: [:show, :edit, :update, :index]
  get 'end_users' => 'end_users#unsubscribe', as: 'unsubscribe'
  patch 'end_users' => 'end_users#withdraw', as: 'withdraw'
  resources :reviews, only: [:create, :edit, :update, :destroy]
  resources :favorites, only: [:new, :create, :index, :show]
  resources :comments, only: [:create, :destroy]
  end

