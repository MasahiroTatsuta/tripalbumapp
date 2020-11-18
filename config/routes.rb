Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root 'posts#index'
  get 'tags/:tag', to: 'searchs#tagindex', as: :tag
  get 'searchs/tagindex' => 'searchs#tagindex'

  devise_scope :user do
    get 'sign_in' => 'users/sessions#new'
    get 'sign_out' => 'users/sessions#destroy'
    post 'users/guest_sign_in' => 'users/sessions#new_guest'
    get '/users/:id', to: 'users#show', as: 'user'
    put 'users/follow/:user_id' => 'users#follow'
    put 'users/unfollow/:user_id' => 'users#unfollow'
    get 'users/follow_list/:user_id' => 'users#follow_list'
    get 'users/follower_list/:user_id' => 'users#follower_list'
  end

  resources :posts, only: %i[new create index show destroy] do
    resources :photos, only: %i[create]
    resources :likes, only: %i[create destroy]
    resources :comments, only: %i[create destroy]
  end
  resources :searchs, only: %i[index show]
end
