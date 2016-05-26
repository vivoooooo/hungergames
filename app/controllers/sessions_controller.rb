class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end




#   def create
#     user = User.find_by :email => params[:email]
#     if user.present? && user.authenticate(params[:password])
#       session[:user_id] = user.id
#       redirect_to root_path
#     else
#       redirect_to login_path
#     end
#   end

#   def destroy
#     session[:user_id] = nil
#     redirect_to root_path
#   end
# end