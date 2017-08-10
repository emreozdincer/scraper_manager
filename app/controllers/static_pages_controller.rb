class StaticPagesController < ApplicationController
  def home
    @scrapers = Scraper.paginate(page: params[:page], per_page: 20)
  end

  def help
  end

  def scripts
  end
end
