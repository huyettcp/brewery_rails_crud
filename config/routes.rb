Breweries::Application.routes.draw do

    # Direct the root path to the welcome controller
    # Within the welcome, use the `index` definition
    root :to => 'welcome#index'
    get '/breweries', :to => 'breweries#index'
    get '/breweries/new', :to => 'breweries#new'
    post '/breweries/create', :to => 'breweries#create'
    get '/breweries/:id', :to => 'breweries#show'
    post '/breweries/:id/delete', :to => 'breweries#delete'
    get '/breweries/:id/edit', :to => 'breweries#edit'
    post '/breweries/:id/update', :to => 'breweries#update'
    get '/breweries/:id/new_beer', :to => 'breweries#new_beer'
    post '/breweries/:id/add_beer', :to => 'breweries#add_beer'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
