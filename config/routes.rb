Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:index, :show] do
    collection do
      get :sweat 
      get :flow
    end
  end

  resources :trainings, only: [:index, :show]
  resources :plans, only: [:index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
