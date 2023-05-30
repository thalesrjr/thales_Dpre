Rails.application.routes.draw do
  get 'companies/new'
  get 'companies/edit'
  get 'companies/create'
  get 'companies/update'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
