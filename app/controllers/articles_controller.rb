class ArticlesController < ApplicationController
  expose_decorated(:articles) { |scope| paginated_articles(scope) }
  expose_decorated(:article)

  expose_decorated(:comments, ancestor: :article)
  expose(:comment) { Comment.new(article: article) }

  def index
  end

  def show
  end

  private

  def paginated_articles(scope)
    scope.includes(:user).page(params[:page]).per(2)
  end
end
