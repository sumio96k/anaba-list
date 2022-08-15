class SearchesController < ApplicationController

  def search
    # binding.pry
    @content = params[:content]
    #セレクトボックスで送られてきたmodelで条件分岐
    if params[:model] == "Post"
      # :contentに#また＃がついているかで条件分岐、ついていたらタグ検索
      if @content.include?("#")
        @content = @content.split("#").last
        @posts = Tag.search_for(@content)
      elsif @content.include?("＃")
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
end
