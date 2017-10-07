class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to answer_path
    else
      flash.now[:danger] = "入力された情報が間違っています。再度お試しください。"
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
