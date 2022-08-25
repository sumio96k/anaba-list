class OrdersController < ApplicationController

  def index
    @posts = Post.post_orders(params[:order])

    # if params[:page] == "posts"
    #   @posts = Post.post_orders(params[:order])
    # elsif params[:page] == "search"

    # elsif params[:page] == "select_search"
    #   category_id = params[:category_id]
    #   area_id = params[:area_id]
    #   prefecture_id = params[:prefecture_id]
    #   area_prefecture_id = Area.where(prefecture_id: prefecture_id.to_i).pluck(:id)
    #   binding.pry
    #   if category_id.length == 1 && area_id.length > 1 && prefecture_id.length > 1
    #     #サイドセレクトボックスでカテゴリーのみ選択した画面
    #     @posts = Post.select_search_for(category_id.to_i, 0, 0, 0).post_orders(params[:order])
    #   elsif category_id.length > 1 && area_id.length > 1 && prefecture_id.length == 1
    #     #サイドセレクトボックスで都道府県のみ選択した画面
    #     @posts = Post.select_search_for(0, 0, prefecture_id.to_i, area_prefecture_id)
    #   elsif category_id.length == 1 && area_id.length > 1 && prefecture_id.length == 1
    #     #サイドセレクトボックスでカテゴリーと都道府県のみ選択した画面
    #     @posts = Post.select_search_for(category_id.to_i, 0, prefecture_id.to_i, area_prefecture_id)
    #   elsif category_id.length > 1 && area_id.length == 1 && prefecture_id.length == 1
    #     #サイドセレクトボックスでカテゴリー以外選択された画面
    #     @posts = Post.select_search_for(0, area_id.to_i, prefecture_id.to_i, area_prefecture_id)
    #   elsif category_id.length == 1 && area_id.length == 1 && prefecture_id.length == 1
    #     #サイドセレクトボックスですべて選択された画面
    #     @posts = Post.select_search_for(category_id.to_i, area_id.to_i, prefecture_id.to_i, area_prefecture_id)
    #   elsif category_id.length > 1 && area_id.length > 1 && prefecture_id.length > 1
    #     #サイドセレクトボックスでなにも選択されなかった画面
    #     @posts = Post.select_search_for(0, 0, 0, 0)
    #   end
    # end
  end

end
