Rails.application.routes.draw do
  
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
  resources :works do 
    resources :comments

  end
  resources :comments do 
    resources :comments
  end
  get 'u/:id', to: 'user#profile', as: 'user'
  get 'pages/home'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get '/', to: 'pages#home'
  direct :twitter do
    "https://twitter.com/lyceum_io"
  end
end
