class PrefecturesController < ApplicationController

  def show
    @prefecture = Prefecture.find(params[:id])
    areas = Area.where(prefecture_id: @prefecture.id)
    @posts = Post.where(area_id: areas.ids)
    @categories = Category.all

  end
end
