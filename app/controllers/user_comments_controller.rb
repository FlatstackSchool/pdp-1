class UserCommentsController < ApplicationController
  before_action :authenticate_user!

  expose(:article)
  expose(:comments, ancestor: :article)
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
