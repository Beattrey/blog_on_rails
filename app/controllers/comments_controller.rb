# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.author = current_user.username
    @comment.save

    redirect_to @article
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
