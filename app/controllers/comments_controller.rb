class CommentsController < ApplicationController

  def new
    @comments = Comment.new
  end
  def create
     @comments = Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"
  end

  private
  def comment_params
    params.permit(:text, :tweet_id).merge(user_id: current_user.id)
  end

end
