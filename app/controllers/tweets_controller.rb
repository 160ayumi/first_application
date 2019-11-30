class TweetsController < ApplicationController
  before_action :set_params, only:[:edit, :update, :destroy]

  def index
    @picture = Picture.all
    @tweet= Tweet.order("created_at DESC").page(params[:page]).per(10)
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.create(text: tweet_params[:text], user_id: current_user.id)
    redirect_to root_path
  end

  def edit
  end

  def update
    # if @tweet.user_id == current_user.id
    #   @tweet.update(tweet_params)
    # end

    @tweet.update(tweet_params)
    redirect_to root_path
  end

  def destroy
    @tweet.destroy
    redirect_to root_path
  end

  private
  
  def tweet_params
    params.require(:tweet).permit(:text)
  end
  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  # end

  def set_params
    @tweet = Tweet.find(params[:id])
  end
  

end
