class SearchesController < ApplicationController
  def tags_search
    @content = params[:content]
    @tag_posts = Tag.tag_search_for(@content)
  end
end
