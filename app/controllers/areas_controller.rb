class AreasController < ApplicationController

  def index
    @prefectures = Prefecture.all
    @areas = Area.all
  end
  def show
  end
end
