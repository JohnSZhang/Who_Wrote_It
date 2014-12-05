Rails.application.routes.draw do
root 'page#home'
match '/about', to: 'page#about', via: 'get'
resources :authors, only: [:show, :index]
resource :quiz, only: [:show, :update]
end
