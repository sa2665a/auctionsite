class ProductsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@products = @user.products

	end

	def new 
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	def create
		@user = User.find(params[:user_id])
		@product = @user.products.new(product_params)

		if @product.save
			redirect_to "/users/#{@user.id}/products"
		else
			render 'new'
		end

	end

	def edit
		@user = User.find(params[:user_id])
		@product = @user.products.find params[:id]

	end

	def update
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.find_by(id: params[:id])

		if @product.update(product_params)
			redirect_to "/users/#{@user.id}/products"
		else
		render "edit"
		end	

	end

	def show
    @user = User.find_by(id: params[:user_id])
    unless @user
      render :no_users_found
    end
    @product = @user.products.find_by(id: params[:id])

  end

	

	def destroy
		@user = User.find params[:user_id]
		@product = @user.products.find(params[:id])
		@product.destroy

		redirect_to "/users/#{@user.id}/products"
	end


	private

	def product_params
		params.require(:product).permit(:title,:description,:deadline, :minimum_bid)

	end
	
end
