Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Parâmetro (to:) recebe a rota com o nome do Controller (static_pages) e o nome da Action (index)
  root to: "static_pages#index"
  
  get "sobre", to: "static_pages#sobre"
  get "contato", to: "static_pages#contato"
  get "entrar", to: "sessions#new"

  post "entrar", to: "sessions#create"

  delete "sair", to: "sessions#destroy"
  
  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]
end