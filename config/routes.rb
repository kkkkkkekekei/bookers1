Rails.application.routes.draw do
  root to: 'homes#top'
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id/update' => 'books#update', as: 'update_book'
  get 'books/book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books
end
