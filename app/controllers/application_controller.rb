class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  def root_domain
    'curljobs.com'
  end
  helper_method :root_domain


end
