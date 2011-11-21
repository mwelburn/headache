class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])

    if @user.nil?
      #TODO - not a valid user
    end

    if current_user.id != @user.id
      #TODO - no access
    end
  end

end
