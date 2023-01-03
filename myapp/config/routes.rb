Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :profile

  # resources :products do
  #   resources :variants
  # end

  namespace :admin do
    resources :articles
  end

end
