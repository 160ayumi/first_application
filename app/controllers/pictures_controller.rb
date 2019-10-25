class PicturesController < ApplicationController
  def index
    @picture = Picture.all
  end

  def new
    @picture = Picture.new
  end
  
  def create
    Picture.create(image: picture_params[:image])
    redirect_to root_path
  end
  private
  
  def picture_params
    params.require(:picture).permit(:image)
  end
end
