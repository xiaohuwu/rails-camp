class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    if !cookies[:auth_token].nil? && !cookies[:auth_token].to_s.empty?
      logger.info "cookies[:auth_token]:#{cookies[:auth_token]}"
      @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) rescue nil
    end
  end

  helper_method :current_user
end
