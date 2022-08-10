Rails.application.routes.draw do
  resources :restaurants, except: [:update, :edit, :destroy] do
    resources :reviews, except: [:update, :edit, :destroy]
  end
end
