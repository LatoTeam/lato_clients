LatoClients::Engine.routes.draw do

  root 'back/clients#index'

  # Resources
  resources :clients, module: 'back'

end
