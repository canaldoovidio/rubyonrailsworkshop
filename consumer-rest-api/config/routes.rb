Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :vapers
      resources :liquids
      resources :accessories
    end
  end
end
