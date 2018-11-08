Rails.application.routes.draw do
  devise_for :users
 # devise_for :installs
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :pacientes do
    resources :medidas
  end
  
  root 'welcome#index'
end
