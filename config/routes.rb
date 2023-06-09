Rails.application.routes.draw do
  resources :projects
  resources :logs
  resources :tasks
  resources :products
  resources :clients
  resources :statuses
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "home#index"	
  get 'home/index'
  post "home/contact(.:format)", to: "home#contact", as: :contact
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
