class StaticPagesController < ApplicationController
  def home
    @scrapers = Scraper.all
  end

  def help
  end
end
