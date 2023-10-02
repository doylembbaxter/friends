class Users::RegistrationsController < Devise::RegistrationsController

  protected

  def update_resource(resource, params)
    if params[:password].blank? && params[:password_confirmation].blank?
      resource.update_without_password(params.except(:current_password))
    else
      super
    end
  end

  private

  def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :profile_picture)
    end
  
    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :profile_picture)
    end
    
end  