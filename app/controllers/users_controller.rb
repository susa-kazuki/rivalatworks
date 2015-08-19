class UsersController < ApplicationController
  def show
    @user = current_user
    @rivals = @user.rivals.order('created_at DESC').page(params[:page]).per(9)
  end
end
