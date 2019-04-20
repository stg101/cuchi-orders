class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params['id'])
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to admin_order_path(@order), notice: "The order was successfully created"    
  end

  def create_orders
    render json: params
  end

  def order_params
    params.require(:order).permit(
      :user_id,
      :product_id,
      :quantity
    )
  end
end
