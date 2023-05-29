# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def after_sign_in_path_for(resource)
    budgets_path
  end

  # GET /resource/sign_in
  def new
    @user = User.new
  end

  # POST /resource/sign_in
  def create
    super do |user|
      redirect_to budgets_path if user.persisted?
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
