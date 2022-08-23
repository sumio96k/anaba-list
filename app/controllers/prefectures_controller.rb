class PrefecturesController < ApplicationController

  def index
    @prefectures = Prefecture.all
  end

  def show
    @prefecture = Prefecture.find(params[:id])
    areas = Area.where(prefecture_id: @prefecture.id)
    @posts = Post.where(area_id: areas.ids).order(id: "DESC")
    @categories = Category.all
  end
end
