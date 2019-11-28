class PicturesController < ApplicationController
  def index
    
  end

  def new
    @picture = Picture.new
  end
  
  def create
    @picture = Picture.create(picture_params)
    # binding.pry
    # if @picture.save
    #   flash[:image] = "写真を登録しました"
      redirect_to root_path

    # # インスタンスの保存に失敗した場合の処理
    # else
    #   render :new
    # end
 

  end
  private
  
  def picture_params
    params.require(:picture).permit(:image)
  end
end
