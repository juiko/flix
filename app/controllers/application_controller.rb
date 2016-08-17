class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #rescue_from CanCan::AccessDenied do |exception|
   # redirect_to startup_index_path, :alert => exception.message
  #end

end
