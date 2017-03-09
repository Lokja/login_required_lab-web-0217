class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !current_user || current_user.empty?
      redirect_to root_path
    else
      redirect_to secrets_show_path
    end
  end

  def destroy
    if current_user
      session.delete :name
    end
    redirect_to root_path
  end

end
