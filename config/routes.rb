Rails.application.routes.draw do

# resources :users do
# 	resources :products

# end

	get '/users', to: 'users#index'
	get '/users/new', to: 'users#new'
	post '/users', to: 'users#create'
	get '/users/:id', to: 'users#show'

	get '/users/:user_id/products', to: 'products#index'
	get '/users/:user_id/products/new', to: 'products#new'
	get '/users/:user_id/products/:id', to: 'products#show', as: :user_products_show
	get '/users/:user_id/products/:id/edit', to: 'products#edit'
	post "/users/:user_id/products", to: "products#create", as: :user_products
	patch '/users/:user_id/products/:id/', to: 'products#update', as: :user_product
	delete '/users/:user_id/products/:id/', to: 'products#destroy'

	post '/users/:user_id/products/:product_id/bids', to: 'bids#create'
	

 #  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
