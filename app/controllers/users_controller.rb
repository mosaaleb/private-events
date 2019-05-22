# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      flash[:success] = 'You have successfully signed up!'
      # redirect_to # events page
    else
      render new_user_path
    end
  end

  def show
    @events = current_user.events
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
