module Users
  class CommentsController < Users::BaseController
    expose(:article)

    # Use `#by_article` instead of article.comments to eleminate
    # unsaved Comment object from collection after `comments.new`
    expose_decorated(:comments) { Comment.by_article(article) }

    expose(:comment, attributes: :comment_attributes)

    def create
      self.comment = new_comment if comment.save
      render "articles/fragments"
    end

    private

    def comment_attributes
      params.require(:comment).permit(:text)
    end

    def new_comment
      article.comments.build
    end
  end
end
