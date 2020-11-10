Rails.application.routes.draw do
  resources :usuarios
  post 'usuarios/:id', to: 'usuarios#desativar'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
