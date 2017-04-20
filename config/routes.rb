Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  resources :categories
  resources :posts

  resources :posts do
    resources :comments
  end

  resources :users, only: [:index, :update, :edit]

  get 'contact' => 'pages#contact'
  post 'contact' => 'pages#contact'
  get 'about' => 'pages#about'

end
