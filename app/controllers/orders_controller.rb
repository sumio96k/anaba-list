class OrdersController < ApplicationController

  def index
    @posts = Post.post_orders(params[:order])
  end
end
