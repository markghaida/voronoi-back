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

# When someone is searching, the search input should be analyzed and
# checked to see if there is a match with either a tag, h1, url, or body
# grades for each attribute match:
  # tag - 40
  # h1 - 30
  # body - 20
  # url - 10
# 
# condition logic should if tag.includes(searchinput){
#  grade += 30 
# }
# and the rest of the attributes do the same


# create a method that takes in the search input, 
# create a variable that contains a score of 0 for each bookmark,
# goes through a for loop of all the bookmarks, 
# set the bookmark.score = 0 at the top of this method, then
# with if conditions to determine if the search input is contained
# in any of the attributes for that particular bookmark, if it is, 
# each attribute it is contained in will update the score based on 
# a certain grade. when we have a final score for each bookmark,
# we want to sort from highest to lowest score, and then
# we want to take the highest scores and plot them on certain bubbles
# closer in proximity to the search bar, and the lesser scores 
# on the perimeters 