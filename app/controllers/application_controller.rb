class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from CanCan::AccessDenied , :with => :access_denied
  before_filter :cancan_hack

  def record_not_found
  end

  def access_denied
  end

  def cancan_hack
    #binding.pry
  	return if request.get?
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  def after_sign_in_path_for(resource)
    if current_user.contact_email.nil? && current_user.mobile.nil?
      edit_user_path(current_user.id)
    else
      root_path
    end
  end
end
