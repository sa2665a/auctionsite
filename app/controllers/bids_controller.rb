class BidsController < ApplicationController

	 def create
    amount = params[:amount].to_i
    @user = User.find_by(email: params[:email])
    @product = Product.find_by(id: params[:product_id])
     @bid = @product.bid.new(
        amount: params[:amount],
        user_id: @user)
      @bid.save
 
    redirect_to user_products_show_path(@product.user.id, @product.id)
  end





end


