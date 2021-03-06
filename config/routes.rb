Leanatic::Application.routes.draw do
  get 'sources/update_all_feeds' => 'sources#updateallfeeds', :as => :update_all_feed
  get 'sources/update_single_feed/:id' => 'sources#updatesinglefeed', :as => :update_single_feed
  get 'sources/clear_posts_cache' => 'sources#clear_posts_cache', :as => :clear_posts_cache
  resources :sources

  get "feed/feed"

  # The priority is based upon order of creation:
  # first created -> highest priority.
  get 'feed' => 'feed#feed', :as => :feed
  get 'profile/:slug' => 'feed#profile'
  get 'tag/:tag' => 'feed#tag'
  get 'new_feed' => 'feed#new_feed'
  get 'feed/highlight/:id' => 'feed#highlight', :as => :highlight_post
  root :to => 'feed#feed'
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
