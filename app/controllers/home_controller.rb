class HomeController < ApplicationController
  def top
    
  end

  def input
  end
  
  def add
    user = User.find_by(id: params[:id])
    user.result += params[:add_result].to_i
    user.save
    redirect_to("/")
  end
end
