class TweetsController < ApplicationController
  before_action :set_params, only:[:show, :edit, :update, :destroy]

  def index
    @picture = Picture.all
    @tweet= Tweet.order("created_at DESC").page(params[:page]).per(10)
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.create(text: tweet_params[:text], user_id: current_user.id)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
    @comment = @tweet.comments.includes(:user)
  end

  def edit
  end

  def update
    if @tweet.user_id == current_user.id
      @tweet.update(tweet_params)
    end
    redirect_to root_path
  end

  def destroy
    if @tweet.user_id == current_user.id
      @tweet.destroy
    end
    redirect_to root_path
  end

  private
  
  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end

  def set_params
    @tweet = Tweet.find(params[:id])
  end
  

end
