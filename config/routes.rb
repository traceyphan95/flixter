Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :courses, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :instructor do
    resources :courses, only: [:new, :create, :show] do
      resources :sections, only: [:new, :create]
    end
    resources :courses, only: [:new, :create, :show]
  end
end
