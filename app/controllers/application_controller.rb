class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  def root_domain
    '500interviews.co'
  end
  helper_method :root_domain


end
