Rails.application.routes.draw do
  resources :applicants, only: [:index, :new, :create]
  resources :positions
  resources :companies, only: [:new, :edit, :create, :update]
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  
end
