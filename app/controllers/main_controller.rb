class MainController < ApplicationController
  def test
  end

  def test2
    @name1 = params[:name1]
    @name2 = params[:name2]
    @name3 = params[:name3]
    @score1 = params[:score1]
    @score2 = params[:score2]
    @score3 = params[:score3]

    if @score1.to_i >= @score2.to_i && @score1.to_i >= @score3.to_i
      @best = @name1
    elsif @score2.to_i >= @score1.to_i && @score2.to_i >= @score3.to_i
      @best = @name2
    else
      @best = @name3
    end
  end

  def test_pos
    redirect_to '/main/test2'
  end
end
