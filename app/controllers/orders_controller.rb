class OrdersController < ApplicationController

  def index
    @posts = Post.post_orders(params[:method])
  end
end
