Rails.application.routes.draw do
  resources :tags
  resources :bookmark_tags
  # resources :bookmarks
  get '/bookmarks', to: 'bookmarks#index'
  get '/bookmarks/:id', to: 'bookmarks#show'
  post '/bookmarks', to: 'bookmarks#create'
  get '/bookmarks/:id', to: 'bookmarks#destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
