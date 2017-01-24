class UsersController < ApplicationController
  before_action :check_if_logged_in, :only => [:edit, :update]

  def show
    @user = @current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id #going back to
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # check_if_logged_in
    @user = @current_user
  end

  def update
    user = @current_user
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.avatar = req["public_id"]
    end
    user.update user_params
    redirect_to user_edit_path(user.id)
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :dob, :sex, :avatar)
  end
end
