class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to root_path
    end
    @user = current_user
  end

end
