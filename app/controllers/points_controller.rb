class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def show
    @point = Point.find(params[:id])
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      flash[:success] = "Answerを作成しました。"
      redirect_to @point
    else
      flash.now[:danger] = "Something Wrong, Pls try again"
      render 'new'
    end
  end
  
  private 
  #なんかErrorになる。.require(:point)を消せば直る。でもそしたらデータが格納されなくなる。
  def point_params
    params.require(:point).permit(:content, :tokuten)
  end
end
