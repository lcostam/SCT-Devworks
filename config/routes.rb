Rails.application.routes.draw do
  resources :tarefas
  resources :usuarios
  post 'usuarios/:id', to: 'usuarios#desativar'
  post 'tarefas/:id', to: 'tarefas#concluir'
  root 'sessions#new'
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
