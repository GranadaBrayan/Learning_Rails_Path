Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :user do
    member do
      get :follow, :unfollow
    end
  end
end
