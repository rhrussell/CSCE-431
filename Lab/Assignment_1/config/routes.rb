Rails.application.routes.draw do
  root 'books#index'
  get '/books/:id/delete', to: 'books#delete', as: 'delete_book'
  resources :books
end
