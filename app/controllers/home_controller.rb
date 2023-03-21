class HomeController < ApplicationController
  def top
    
  end

  def input
  end
  
  def add
    user = User.find_by(id: params[:userId])
    user.total += 1
    user.save
    user.results.create(user_id:params[:userId].to_i, performance:params[:resultPerformance].to_i, win:true)
 

    redirect_to("/")
  end
end
