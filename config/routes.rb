Rails.application.routes.draw do

  root to: 'homes#top'
  get 'about' => 'homes#about'

  resources :users, only: [:index, :show, :edit, :update] do
    collection do
      get 'unsubscribe' => 'users#unsubscribe'
    end
  end
  patch 'users/:id/withdraw' => 'users#withdraw', as: 'withdraw'



  resources :posts, only: [:index, :show, :edit, :update, :create, :update, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  get 'favorites' => 'users#index'

  resources :areas, only: [:show]
  resources :prefectures, only: [:index, :show]
  resources :categories, only: [:index, :show]

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
