class UsersController < ApplicationController
    before_action :authenticate_user!  # Ensure user is signed in
  
    def show
      @user = User.find(params[:id])
      redirect_to root_path, alert: "Access denied!" unless @user == current_user
    end
  end  