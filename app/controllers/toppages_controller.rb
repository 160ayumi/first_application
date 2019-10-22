class ToppagesController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
  end
  
  def create
    Tweet.create(tweet_params)
  end

  def edit
  end

  def update
  end
  private
  def tweet_params
    params.permit(:text)
  end

  
end
