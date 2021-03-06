Rails.application.routes.draw do

  post 'workshops/add_person'
  get 'workshops/search_person'
  
get 'workshops/generate_xl_sheet'
post 'workshops/create_xl'
  # get 'workshop/edit'

  # get 'workshop/update'

  # get 'workshop/destroy'

  # get 'users/new'

  # get 'users/create'
  resources :workshops
  # get 'users/edit'
  resources :users
  root :to => 'home#index'
  resources :registrations

   get 'prints/registration_card_print'
   get 'prints/income_certificate_print'
   get 'prints/community_certificate_print'
   get 'prints/disability_certificate_print'
  # post 'prints/search_person_details'
   get 'print_preview/registration_card_print'
   get 'print_preview/income_certificate_print'
   get 'print_preview/community_certificate_print'
   get 'print_preview/disability_certificate_print'

get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
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
