class AreasController < ApplicationController

  def index
  end

  def show
    @categories = Category.all
    @area = Area.find(params[:id])
    @posts = @area.posts.order(id: "DESC")
  end
end
