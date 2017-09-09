Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#dashboard"
  resources :users
	resources :instrument_categories
	resources :instruments
end
