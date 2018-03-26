Rails.application.routes.draw do
  get 'food/index'
  get 'home/index'
  get 'login/index'
  get 'profile/index'
  get 'sessions/new'
  get 'users/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  match ':controller(/:action(/:id))' , :via => :get
  root 'welcome#index'

  get '/rand_food' => 'home#food'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
