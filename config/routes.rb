Rails.application.routes.draw do
  root to: 'meetings#index'
  resources :meetings, only: [:index, :new, :show, :edit, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
