class HomeController < ApplicationController
  def top
    # @user = User.all
    @results = Result.where(user_id: current_user.id)
    @data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
  end

  def input
  end
  
  def add
    user = User.find_by(id: params[:userId])
    user.total += params[:resultPerformance].to_i
    user.results.create(performance: params[:resultPerformance].to_i, win:true)

    user.save

    redirect_to("/")
  end
end
