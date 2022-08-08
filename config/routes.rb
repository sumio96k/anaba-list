Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  root to: 'homes#top'
  get 'about' => 'homes#about'

  resources :users, only: [:index, :show, :edit, :update] do
    collection do
      get ':id/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
    end
  end
  patch 'users/:id/withdraw' => 'users#withdraw', as: 'withdraw'



  resources :posts, only: [:index, :show, :edit, :update, :create, :update, :destroy, :new] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  get 'favorites' => 'users#index'

  resources :areas, only: [:index,:show]
  resources :prefectures, only: [:index, :show]
  resources :categories, only: [:index, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
