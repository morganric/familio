Rails.application.routes.draw do


   match "/panda/authorize_upload", :to => "panda#authorize_upload", via: [:get, :post]
            resources :videos

  resources :photos

  devise_for :users
  resources :users

  resources :profiles, shallow: true do
    resources :photos, :only =>[:show]
  end

 

  scope ":id" do
    get '', to: 'profiles#show', :as => 'vanity_url'
  end

  scope ":user_id/:id" do
      get '', to: 'photos#show', :as => 'vanity_photo_url'
  end

  authenticated :user do
	  root to: "photos#index", as: :authenticated_root
  end

  unauthenticated do
	  root to: "visitors#index"
  end
end
