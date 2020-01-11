Rails.application.routes.draw do
  resources :topics
  resources :answers
  resources :questions
  devise_for :users

  resources :follows do
    collection do
      post :follow_topic
      post :follow_user
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
