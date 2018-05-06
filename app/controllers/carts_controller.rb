class CartsController < ApplicationController

  def show
    if current_user
      @previous_orders = current_user.previous_orders
      @order = current_order.update_total
    end
    @order_items = current_order.order_items
  end

  def finalize
    if current_user
      current_order.finalize(current_user)
      session[:order_id] = nil
      redirect_to cart_path
    else
      flash[:alert] = "You need to sign up or sign in to complete your order."
      redirect_to sign_in_path
    end
  end

  def create
    # Amount in cents
    @amount = 5000

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
 end
