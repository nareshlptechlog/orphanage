class UsersController < ApplicationController
  def new
  end

  def create

    user = User.new(user_params)#,:encrypted_password,:salt)
   
    if params[:user][:password] == params[:user][:password_confirmation] && user.save
    	redirect_to login_path

    else
    	redirect_to new_user_path
  end
   end
  def edit
     @user= User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])
  if @user.update(password: params[:password])
    redirect_to login_path
  else
    render "edit"
  end
 end
private
def user_params
   params.require(:user).permit(:username,:password)
end
end
