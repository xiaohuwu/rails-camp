class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  def current_user
  #  logger.info "cookies[:auth_token]:#{cookies[:auth_token].class}"
    # @current_user ||= User.find(session[:user_id]) if session
    if !cookies[:auth_token].nil? && !cookies[:auth_token].to_s.empty?
      # logger.info "comming in"
      @current_user ||= User.find_by_auth_token!(cookies[:auth_token])
    end

  end

  helper_method :current_user

end
