class ProductsController < ApplicationController
	def index
		@products = Product.order(created_at: :desc)
	end

	def new 
		@products = Product.new
		render 'new'

	end
	def show
			@products = Product.find_by(id: params[:id])

		unless @products
			render "product_not_found"
		end

	end
	def create
		@products = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description])
		@products.save
		binding.pry
		redirect_to "/products/#{@products.id}"

	end
	def destro

	end
end
