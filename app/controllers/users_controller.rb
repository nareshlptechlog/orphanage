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
  end

  def update
  	binding.pry
  @user = User.find(params[:id])
  if @user.update(user_params)
    redirect_to(@user)
  else
    render "edit"
  end
 end
private
def user_params
   params.require(:user).permit(:username,:password)
end
end
