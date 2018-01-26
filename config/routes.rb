Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products
  resources :users, except: [:index]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
