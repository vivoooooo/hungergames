class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  @user = User.find(params[:id])
  end

  def update
    # @user = @current_user
    @user = User.find(params[:id])
    if @user.update user_params
      redirect_to root_path
    else
    render :edit
    end
  end

  def new
    @user = User.new
  end

  def create
    raise 'hell'
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :picture)
  end
end
