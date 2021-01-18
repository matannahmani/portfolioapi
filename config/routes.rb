Rails.application.routes.draw do
  resources :inquires, only: [:index,:create,:show] #, constraints: { protocol: 'https://', host: 'matannahmani.github.io/portfolio' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
