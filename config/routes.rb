Rails.application.routes.draw do  
  resources :likes, only: [:create, :destroy, :index]
  resources :followerships, only: [:create, :destroy, :index]
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :tweeets do
    resources :comments 
    resources :thumbs
    resources :sub_comments
    resources :unthumbs
  end
  resources :users
   
  root 'tweeets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
