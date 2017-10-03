Rails.application.routes.draw do


  post 'delete_line_item' => 'cart#delete_line_item'
  get 'delete_line_item' => 'cart#delete_line_item'

  post 'order_complete' => 'cart#order_complete'

  get 'all_users' => 'admin#all_users'

  post 'edit_user' =>'admin#edit_user'

  get 'show_user' => 'admin#show_user'

  post 'add_to_cart' =>'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  get 'edit_line_item' => 'cart#edit_line_item'

  post 'edit_line_item' => 'cart#edit_line_item'

  devise_for :users
  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

	root 'storefront#all_items'
	
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
