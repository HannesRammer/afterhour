class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
  append_view_path Rails.root.join("app", "components")
end
