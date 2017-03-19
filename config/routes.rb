  Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home' #a1
  get '/about', to: 'pages#about' # b1 -what if you want to go to about pages? so it will 1st go to pages_controller and then look for about action

resources :todos  #it gives me all the CRUD routes for todos
end
