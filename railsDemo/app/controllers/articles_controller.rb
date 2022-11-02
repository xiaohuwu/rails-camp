class ArticlesController < ApplicationController
  def new
    IndexConfig.joins(:goods_info)
  end

end
