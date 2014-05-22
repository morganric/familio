Rails.application.routes.draw do
  resources :photos

  devise_for :users
  resources :users

  authenticated :user do
	  root to: "photos#index", as: :authenticated_root
  end

  unauthenticated do
	  root to: "visitors#index"
  end
end
