Rails.application.routes.draw do
root 'page#home'
match '/about', to: 'page#about', via: 'get'
get "pages/about"
resources :authors
end
