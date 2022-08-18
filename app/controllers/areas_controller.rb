class AreasController < ApplicationController

  def index
  end

  def show
    @categories = Category.all
    @area = Area.find(params[:id]).limit(12).order(id: "DESC")
    @posts = @area.posts
  end
end
