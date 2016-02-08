Rails.application.routes.draw do
  devise_for :users

  resources :articles, only: %i(index show) do
    resources :user_comments, only: %i(create)
  end

  resources :user_articles, only: %i(new create edit update)

  root to: "pages#home"
end
