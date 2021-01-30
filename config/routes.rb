Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:index, :show] do
    collection do
      get :sweat 
      get :flow
    end
  end
  
  resources :trainings, only: [:index, :show, :new, :create, :update]
  resources :plans, only: [:index, :show, :new, :create, :update]
  resources :profiles, only: [:show, :edit, :update] do
    collection do
      get :account
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
