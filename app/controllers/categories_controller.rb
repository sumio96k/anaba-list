class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    #都道府県・エリア詳細ページのlink_toで値を飛ばして条件分岐で絞り込みで表示させる
    if params[:key] == "Prefecture"
      area_id = Area.where(prefecture_id: params[:second_id].to_i).pluck(:id)
      @posts = Post.where(category_id: @category.id, area_id: area_id)
      @prefecture_or_area = Prefecture.find(params[:second_id].to_i)
    elsif params[:key] == "Area"
      @posts = Post.where(category_id: @category.id, area_id: params[:second_id].to_i)
      @prefecture_or_area = Area.find(params[:second_id].to_i)
    else
      @posts = Post.where(category_id: @category.id)
    end
  end
end
