class SearchesController < ApplicationController

  def search
    @content = params[:content]
    #セレクトボックスで送られてきたmodelで条件分岐
    if params[:model] == "Post"
      # :contentに#また＃がついているかで条件分岐、ついていたらタグ検索
      if @content.include?("#")
        ##と文字を分けて文字だけを@contentに代入
        @content = @content.split("#").last
        @posts = Tag.search_for(@content)
      elsif @content.include?("＃")
        #全角の＃の場合
        @content = @content.split("＃").last
        @posts = Tag.search_for(@content)
      else
        @posts = Post.search_for(@content)
      end
    elsif params[:model] == "Tag"
      @posts = Tag.search_for(@content)
    elsif params[:model] == "User"
      users = User.search_for(@content)
      @users = User.users_without_admin_deleted(users)
    end
  end

  def select_search
    category_id = params[:category_id].to_i
    area_id = params[:area_id].to_i
    prefecture_id = params[:prefecture_id].to_i
    area_prefecture_ids = Area.where(prefecture_id: prefecture_id).ids

    if params[:model] == "Post"
      if params[:category_id].blank? == false && params[:area_id].blank? == true && params[:prefecture_id].blank? == true
        #カテゴリーのみ選択された場合
        @posts = Post.select_search_for(category_id, area_id, 0)
      elsif params[:category_id].blank? == true && params[:area_id].blank? == true && params[:prefecture_id].blank? == false
        #都道府県のみ選択された場合
        @posts = Post.select_search_for(category_id, area_prefecture_ids, 1)
      elsif  params[:category_id].blank? == true && params[:area_id].blank? == false && params[:prefecture_id].blank? == false
        #カテゴリー以外が選択された場合
        @posts = Post.select_search_for(category_id, area_id, 2)
      elsif  params[:category_id].blank? == false && params[:area_id].blank? == false && params[:prefecture_id].blank? == false
        #すべて選択された場合

        @posts = Post.select_search_for(category_id, area_prefecture_ids, 3)
      else
        @posts = Post.all
      end
    elsif params[:model] == "User"
    end
  end

end
