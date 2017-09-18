class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def new
      @user = User.new(params[:id])
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
         flash[:success] = "アカウントの作成に成功しました！"
         redirect_to @user
      else
        flash.now[:danger] = "アカウントの作成に失敗しました！"
        render signup_path
      end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    def user_params
       params.require(:user).permit(:name, :email, :password, :password_digest) 
    end
end
