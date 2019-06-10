class OrdersController < ApplicationController
  def create
    # getting the customer from current user and creating an empty order
    if current_user.customer.orders.any?
      @order = current_user.customer.orders.last
    else
      @order = Order.create(customer: current_user.customer)
    end

    # finding which product we clicked on add to basket
    # url: products/1/orders
    @product = Product.find(params[:product_id])

    @ordered_product = OrderedProduct.create(product: @product, order: @order)

    redirect_to order_path(@order)
  end

  def show
    @order = Order.find(params[:id])
  end
end
