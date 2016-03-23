Rails.application.routes.draw do
  devise_for :users

  resources :articles, only: %i(index show)

  namespace :users do
    resources :articles, only: %i(new create edit update) do
      resources :comments, only: %i(create)
    end
  end

  root to: "pages#home"
end
