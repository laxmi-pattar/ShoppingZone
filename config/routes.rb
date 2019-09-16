Rails.application.routes.draw do
	devise_for :users
	get 'pages/home'
	get 'pages/about'
	resources :products
	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "products#index"
end
