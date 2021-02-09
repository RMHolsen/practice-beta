Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'artifacts', to: 'artifacts#index'
  get 'artifacts/new', to: 'artifacts#new'#, as: :new_artifact
  post 'artifacts', to: 'artifacts#create'
  get 'artifacts/:id', to: 'artifacts#show'
  #Remember your order of things, show comes after new and create 
  get 'artifacts/:id/edit', to: 'artifacts#edit', as: :edit_artifact
  patch 'artifacts/:id', to: 'artifacts#update'

  #This may not entirely work with the form_for @artifact thing, or maybe that's in a future lesson.

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :creatures, only: [:index, :show, :create, :new, :edit, :update]
  resources :books, only: [:index, :show, :create, :new, :edit, :update]
  resources :guilds, only: [:index, :show, :create, :new, :edit, :update]
  resources :users, only: [:index, :show, :create, :new, :edit, :update]
  resources :projects, only: [:index, :show, :create, :new, :edit, :update]
  resources :genres, only: [:index, :show, :create, :new, :edit, :update]
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
