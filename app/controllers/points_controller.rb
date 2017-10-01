class PointsController < ApplicationController
  def index
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
  def point_params
    params.permit(:content, :tokuten)
  end
end
