class HomeController < ApplicationController
  def index
    @promotions = Promotion.where("start_date <= ? AND end_date >= ? ", Date.today, Date.today);
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def help
  end

  def conditions
  end

  def announcements
  end

  def site
  end

  def search
    @results=0
    if !params[:searchinput].nil?
      @results=1
      @searchinput = params[:searchinput]
      @searchcriteria="%#{params[:searchinput]}%"
      @maplist = Map.where("name like ?",@searchcriteria)
    end
  end
end
