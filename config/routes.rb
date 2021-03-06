SaronRails::Application.routes.draw do
  resources :sessions

  get '/' => "home#index", as: "home"
  get '/projects' => "projects#index"

  get '/login' => "sessions#new"
  get '/logout' => "sessions#destroy"
  
  get '/posts/new' => "posts#new", as: "new_post"
  get '/posts' => "posts#index", as: "posts"
  post '/posts' => "posts#create"
  
  get '/posts/code' => "posts#code"
  get '/posts/thoughts' => "posts#thoughts"
  get '/posts/illustrations' => "posts#illustrations"

  get '/posts/:id' => "posts#show", as: "post"
  delete '/posts/:id' => "posts#destroy"
  get '/posts/:id/edit' => "posts#edit", as: "edit_post"
  patch '/posts/:id' => "posts#update"

  get '/about' => "home#about"


  # get '/blogpost' => "blogpost#new", as: new_blogpost
  # get '/illustration' => "blogpost#new", as: new_blogpost

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
