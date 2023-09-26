class HomeController < ApplicationController
  def index
    if current_user
      redirect_to treinos_path
    end
  end
end
