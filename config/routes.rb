Rails.application.routes.draw do
  devise_for :users
  root to: "hotels#index"
  resources :hotels do
    resources :rooms do
    end
  end
  resources :bookings
end
