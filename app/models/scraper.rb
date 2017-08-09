class Scraper < ApplicationRecord
  validates :name, presence: true,
                  uniqueness: true
  validates :youtube_id, presence: true,
                        uniqueness: true       
end
