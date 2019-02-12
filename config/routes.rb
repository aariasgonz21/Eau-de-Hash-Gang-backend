Rails.application.routes.draw do
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post "/perfumes/:id/reviews", to: "reviews#create"
      patch "/perfumes/:p_id/reviews/:r_id", to: "reviews#update"
      resources :perfumes, only: [:index, :show]
      resources :reviews, only: [:show, :create, :update, :destroy]
    end
  end
end
