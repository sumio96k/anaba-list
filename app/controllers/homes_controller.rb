class HomesController < ApplicationController
  def top
    @prefectures = Prefecture.where(name: ['東京都', '大阪府', '福岡県'])
  end

  def about
  end
end
