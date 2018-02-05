Rails.application.routes.draw do
  devise_for :accesses  
  resources :panel
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups do
  	resources :users
  end
  root 'welcome#login'
end
