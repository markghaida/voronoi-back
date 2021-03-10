Rails.application.routes.draw do
  resources :secondary_scores
  resources :tags
  # resources :bookmark_tags
  # resources :bookmarks
  get '/bookmarks', to: 'bookmarks#index'
  get '/bookmarks/search/:input', to: 'bookmarks#search'
  post '/bookmarks/search', to: 'bookmarks#search'
  # get '/bookmarks/:id', to: 'bookmarks#show'
  post '/bookmarks', to: 'bookmarks#create'
  get '/bookmarks/:id', to: 'bookmarks#destroy'
  get '/tags', to: 'tags#index'
  get '/bookmark_tags/', to: 'bookmark_tags#index'
  get '/bookmark_tags/:id', to: 'bookmark_tags#destroy'
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

