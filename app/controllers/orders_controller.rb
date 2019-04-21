class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params['id'])
  end

  def new
    @products = Product.all
    @order = Order.new
    @orders = Order.where(["user_id = ?", current_user.id])
  end

  def create
    product_id = params[:order][:product_id]    
    # @order = Order.find_by(product_id: product_id)
    @order = Order.where(["user_id = ?", current_user.id]).where(["product_id = ?", product_id]).last

    if @order
      @order.update(quantity: @order.quantity + 1)
    else 
      @order = Order.create(product_id: product_id, user_id: current_user.id , quantity: 1)
    end

    redirect_to new_order_path, notice: "The order was successfully created"    
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    render json: order.attributes.to_json, status: :ok
  end  

  def destroy
    # @order = Order.find(params[:id])
    Order.where(["user_id = ?", current_user.id]).delete_all
    # redirect_to orders_path, notice: "The order was successfully deleted"
    redirect_to new_order_path, notice: "The order was successfully cleared"    
  end
  
  def order_params
    params.require(:order).permit(
      :user_id,
      :product_id,
      :quantity
    )
  end
end
