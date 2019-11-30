class TweetsController < ApplicationController
  before_action  except: :index
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
  end
  private
  
  def tweet_params
    params.require(:tweet).permit(:text)
  end
  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  # end

  

end
