class HomeController < ApplicationController
  def top
    # @user = User.all
    @results = Result.where(user_id: current_user.id)
  end

  def input
  end
  
  def add
    user = User.find_by(id: params[:userId])
    user.total += 1
    user.save

    result = Result.new(user_id:params[:userId].to_i, performance:params[:resultPerformance].to_i, win:true)
    result.save
    user.results.create(performance:params[:resultPerformance].to_i, win:true)
    user.total += 1
    user.save

    redirect_to("/")
  end
end
