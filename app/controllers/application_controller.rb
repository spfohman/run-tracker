class ApplicationController < ActionController::API
  include ActionController::Cookies
rescue_from ActiveRecord::RecordNotFound, with: :not_found 
  # before_action :confirm_authentication 

  private 
  def current_user 
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in? 
    !!current_user 
  end

  def confirm_authentication 
    render json: {error: "You must be logged in to access that information."}, status: :unauthorized unless logged_in? 
  end

  def not_found(error)
    render json: {error: error.message}, status: :not_found 
  end
end
