Rails.application.routes.draw do

  resources :photos

  devise_for :users
  resources :users
  resources :profiles

  scope ":id" do
    get '', to: 'profiles#show', :as => 'vanity_url'
  end

  authenticated :user do
	  root to: "photos#index", as: :authenticated_root
  end

  unauthenticated do
	  root to: "visitors#index"
  end
end
