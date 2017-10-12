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
  
  def edit
    @point = Point.find(params[:id])
  end
  
  def update
    @point = Point.find(params[:id])
    if @point.update_attributes(point_params)
      flash[:success] = "編集成功"
      redirect_to @point
    else
      flash.now[:danger] = "編集失敗"
      render edit_point_path
    end
  end
  
  def destroy
    @point = Point.find(params[:id])
    @point.destroy
    
    flash[:success] = 'Inqは正常に削除されました'
    redirect_to current_user
  end
  
  private 
  #なんかErrorになる。.require(:point)を消せば直る。でもそしたらデータが格納されなくなる。
  def point_params
    params.require(:point).permit(:id, :content, :tokuten)
  end
end
