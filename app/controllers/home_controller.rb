class HomeController < ApplicationController
  def top
    if user_signed_in?
      # @user = User.all
      @results = Result.where(user_id: current_user.id)
    else
      redirect_to(new_user_session_path)
    end
  end

  def output
    
  end

  def input
  end
  
  def add
    user = User.find_by(id: params[:userId])
    user.total += params[:resultPerformance].to_i
    user.results.create(performance: params[:resultPerformance].to_i, total:user.total, win:true)

    user.save

    redirect_to("/")
  end
end
