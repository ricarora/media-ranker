Rails.application.routes.draw do

  # Album Routes ---------------------------
  get 'albums',          to: 'albums#index', as: :albums

  get 'album/new',       to: 'albums#new', as: :new_album

  post 'albums',         to: 'albums#create'

  post 'album/:id/voteup',to: 'albums#voteup', as: :album_voteup

  get 'album/:id',       to: 'albums#show', as: :album

  patch 'album/:id',     to: 'albums#update'

  delete 'album/:id',    to: 'albums#destroy'

  get 'album/:id/edit',  to: 'albums#edit', as: :edit_album

  # Books Routes -----------------------------
  get 'books',          to: 'books#index', as: :books

  get 'book/new',       to: 'books#new', as: :new_book

  post 'books',         to: 'books#create'

  post 'book/:id/voteup',to: 'books#voteup', as: :book_voteup

  get 'book/:id',       to: 'books#show', as: :book

  patch 'book/:id',       to: 'books#update'

  delete 'book/:id',    to: 'books#destroy', as: :delete_book

  get 'book/:id/edit',  to: 'books#edit', as: :edit_book

  # Movies Routes -----------------------------
  get 'movies',          to: 'movies#index', as: :movies

  get 'movie/new',       to: 'movies#new', as: :new_movie

  post 'movies',         to: 'movies#create'

  post 'movie/:id/voteup',to: 'movies#voteup', as: :movie_voteup

  get 'movie/:id',       to: 'movies#show', as: :movie

  patch 'movie/:id',     to: 'movies#update'

  delete 'movie/:id',    to: 'movies#destroy', as: :delete_movie

  get 'movie/:id/edit',  to: 'movies#edit', as: :edit_movie

  root "home#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
