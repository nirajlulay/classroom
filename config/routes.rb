Classroom::Application.routes.draw do
  root :to => "login#index"
  resources :charts do
resources :comments
end
  resources :users
  resource :session
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
end
