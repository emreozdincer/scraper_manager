class ScrapersController < ApplicationController
  def new
    @scraper = Scraper.new
  end

  def show
    @scraper = Scraper.find(params[:id])
  end

  def index
    @scrapers = Scraper.all
  end

   def create
    @scraper = Scraper.new(scraper_params)    # Not the final implementation!
    if @scraper.save
      flash[:success] = "Scraper Added!"
      redirect_to @scraper
    else
      render 'new'
    end
  end

  private

    def scraper_params
      params.require(:scraper).permit(:name, :youtube_id)
    end
end
