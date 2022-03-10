Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :scaffoling2s
  resources :scaffolings
  get 'home/about'
  #root'home#index'
  root'scaffoling2s#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
