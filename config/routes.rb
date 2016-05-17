Rails.application.routes.draw do

  get 'results/' => 'results#index'

  get 'results/show' => 'results#show'

  post 'results/show' => 'results#create'

  get 'factual/' => 'factual#index'

  get 'factual/show' => 'factual#show'

  post 'factual/create' => 'factual#create'




  #users 
  # make 'login' root
  root 'users#new'


  get 'users/create'
  # change to 'signup'
  post '/' => 'users#create'
  # duplicate (can be deleted)
  get 'signup' => 'users#new'
  
  ##password controller routes
  get 'reset' => 'passwords#new'
  post 'reset' => 'passwords#create'
  get 'reset/:code' => 'passwords#edit', as: :reset_code
  put 'reset/:code' => 'passwords#update'



 #main
  get 'restricted' => 'main#restricted'

  

  # get 'signup' => 'users#new'

  


  #sessions

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get 'logout' => 'sessions#destroy'

  #auth
  get 'auth/logout' => 'auth#logout'
  get 'auth/failure' => 'auth#failure'
  get 'auth/:provider/callback' => 'auth#callback'

  get 'items' => 'items#index'
  get 'items/:id' => 'items#show'
  delete 'items/:id' => 'items#destroy'

  #favorites
  get 'favorites' => 'favorites#index'

  get 'lists' => 'lists#index'


  resources :items
  resources :favorites
  resources :lists

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
