class RegistrationController < Devise::RegistrationsController
  
  def index
  end

  def after_inactive_sign_up_path_for(resource)
  	return registration_index_path
  end

end
