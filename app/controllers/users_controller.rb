class UsersController < ApplicationController

  def new
    @user = User.new(user_params)
    @user.save
    redirect_to @user, notice: 'New'
  end

  def update
    @user.update(user_params)
    redirect_to @user, notice: 'Update'
  end

  private
  def user_params
    params.require( :user ).permit( :name, :type )
  end
end
