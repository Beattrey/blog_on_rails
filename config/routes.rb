Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles, only: [:new, :create], path_names: { :new => ''}
  resources :terms, only: [:new], path_names: { :new => ''}
  resources :about, only: [:new], path_names: { :new => ''}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
