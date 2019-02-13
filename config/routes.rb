Rails.application.routes.draw do
  root 'home#index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'


  resources :users
  get 'home/index'


  get 'pages/info'

  resources :comments
  resources :posts
  root to: redirect('/posts')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
