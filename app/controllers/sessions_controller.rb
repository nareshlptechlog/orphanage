class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:username], params[:password])
    # If the user exists AND the password entered is correct.
    if user.present?
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to root_path
    else
      #binding.pry
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
      flash[:notice] = "wrong mail_id or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

#   def destroy
#     session[:user_id] = nil
#     redirect_to '/'
#   end
# end