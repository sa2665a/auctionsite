Rails.application.routes.draw do


	get '/products', to: 'products#index'

	get '/products/new', to: 'products#new'

	post '/products', to: 'products#create'

	get '/products/:id', to: 'products#show'

	# get '/projects/:id', to: 'projects#show'

	# post '/projects', to: 'projects#create'
 #  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
