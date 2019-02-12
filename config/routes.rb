Rails.application.routes.draw do
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post "/perfumes/:id/reviews", to: "reviews#create"
      resources :perfumes, only: [:index, :show]
      resources :reviews, only: [:show, :create]
    end
  end
end
