class StaticPagesController < ApplicationController
  def home
    @article = Article.last
  end
  def about
  end
  def contact
  end
  def privacy
  end
  def tos
  end
end
