class PointsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      flash[:success] = "You can see recommendations!"
      redirect_to @point
    else
      flash.now[:danger] = "Something Wrong, Pls try again"
      render 'new'
    end
  end
  
  private 
  def point_params
    params.require(:point).permit(:content, :tokuten)
  end
end
