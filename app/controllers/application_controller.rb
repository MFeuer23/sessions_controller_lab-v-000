class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if session[:name]
        session[:name]
    else
      redirect_to '/'
    end
  end
end
