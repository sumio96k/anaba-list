class AreasController < ApplicationController

  def index

  end
  def show
    @area = Area.find(params[:id])
    @posts = @area.posts
  end
end
