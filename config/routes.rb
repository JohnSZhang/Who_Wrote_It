Rails.application.routes.draw do
root 'page#home'
resource :quiz, only: [:show, :update]
end
