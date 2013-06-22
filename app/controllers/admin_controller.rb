class AdminController < ApplicationController
  before_filter :authenticate_admin, except: :login

  def authenticate_admin
    redirect_to root_path unless cookies[:admin] == 'wampa'
  end

  def login
    if request.post?
      if params[:password] == "wampa"
        cookies[:admin] = "wampa"
        redirect_to admin_root_path
      end
    end
  end

end
