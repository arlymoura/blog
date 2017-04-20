class UsersController < ApplicationController
  # before_action :configure_account_update_params, only: [:update]
  include UsersHelper
  before_action :find_user, only: [:edit, :update, :show, :delete]

  def index
    @users = User.search(params).paginate(:page => params[:page], :per_page => 20).order('name')
  end

  def edit
  end

  def show
  end

  def update
    @user = User.find(params[:id])
    attr = user_params
    attr = remove_password_fields(attr)
    if @user.update_attributes(attr)
      flash[:notice] = "Successfully updated user!"
      redirect_to users_path
    else
      flash[:alert] = "Error updating user!"
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role,
                                :provider, :uid, :image, :avatar)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
