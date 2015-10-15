Rails.application.routes.draw do

  resources :messages
  root 'messages#index'
end
