Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :harasses
      root to: "harasses#index"
    end
  end
end
