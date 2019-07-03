Rails.application.routes.draw do
  get 'users/signup'
  get 'welcome/index'
  root 'welcome#index'

  resources :users

  post "create_login_session" => "users#create_login_session"

  get "login" => "users#login", :as => "login"
  get "signup" => "users#signup", :as => "signup"


  delete "logout" => "users#logout", :as => "logout"

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
