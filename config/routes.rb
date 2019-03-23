Rails.application.routes.draw do
  get 'workshops/index'
  get 'workshops/show'
  resources :projects do
    resources :workshops, only: [:create, :destroy]
  end
  resources :people
  devise_for :users

  root 'projects#index'

end
