Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :bookers

 get 'bookers' =>'bookers#index', as: 'books'
    post 'bookers' => 'bookers#create'
    get 'bookers/:id' => 'bookers#show', as: 'show_book'
    # get 'bookers/:id' => 'bookers#show', as: 'book'
    get 'bookers/:id/edit' => 'bookers#edit', as: 'edit_book'
    patch 'bookers/:id' => 'bookers#update', as: 'update_book'
    put 'bookers/:id' => 'bookers#update'
    delete 'bookers/:id' => 'bookers#destroy'

  # get 'top' => 'bookers#top'
  root 'bookers#top'
end
