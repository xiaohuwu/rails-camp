Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # namespace :admin do
  #   resources :users
  # end

  # scope "/admin" do
  #   resources :users
  # end

  # resources :users do
  #   resources :posts
  # end


  # resources :users, only: [:index] do
  #
  #     member do
  #         post :status
  #     end
  #
  #     collection do
  #         get :online
  #     end
  #
  # end

  get ':controller(/:action(/:id))'


end
