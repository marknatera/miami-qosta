Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contacts

  resources :developments

  get '/new-developments' => 'developments#new_developments_index'


  root to: 'pages#home'

  # get '/development' => 'pages#development'
  get '/concierge' => 'pages#concierge'
  get '/concierge/sky-concierge' => 'pages#sky'
  get '/concierge/ocean-concierge' => 'pages#ocean'
  get '/concierge/executive-concierge' => 'pages#executive'
  get '/concierge/exotic-concierge' => 'pages#exotic'
  get '/concierge/time-management' => 'pages#time'
  get '/investments' => 'pages#investments'
  get '/investments/how-to-buy-a-house' => 'pages#house'
  get '/integral-service' => 'pages#integral'
  get '/integral-service/legal' => 'pages#legal'
  get '/integral-service/visa-eb5' => 'pages#visa'
  get '/integral-service/eb5-program' => 'pages#eb5'
  get '/integral-service/financing' => 'pages#financing'
  get '/team' => 'pages#team'
  get '/contact' => 'contacts#new', as: 'contact_email'
  get '/thanks' => 'pages#thanks'



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
  #     Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
