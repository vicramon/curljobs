class AdminController < ApplicationController
  #before_filter :authenticate_admin

  def authenticate_admin
    redirect_to root_path unless cookies[:admin] == 'wampa'
  end

end
