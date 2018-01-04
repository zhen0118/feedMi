Rails.application.routes.draw do
  get 'sessions/new'

  get 'login/index'
  get 'profile/index'
  get 'users/new'
  get 'home/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  match ':controller(/:action(/:id))' , :via => :get
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
