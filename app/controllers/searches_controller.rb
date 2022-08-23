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
    #postとprefectureはアソシエーションになっていないのでprefectureのidから
    #areaのprefecture_idを取得してそこからareaのidを取得する
    area_prefecture_id = Area.where(prefecture_id: prefecture_id).pluck(:id)

    @posts, @result = Post.select_search_for(category_id, area_id, prefecture_id, area_prefecture_id)

  end

end
