class UsersController < ApplicationController
  respond_to :html

  def new
    @user = User.new
    respond_with(@user)
  end

  def create
    @user.update_attributes user_params
    respond_with(@user)
  end

  def edit
    @user = User.new
    respond_with(@user)
  end

  def update
    @user.update_attributes user_params
    respond_with(@user)
  end

  def show
    @user = User.new
    respond_with(@user)
  end

  private

  def user_params
    params.require(:user).permit!
  end

end