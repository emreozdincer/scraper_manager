class CreateScrapers < ActiveRecord::Migration[5.1]
  def change
    create_table :scrapers do |t|
      t.string :name
      t.string :youtube_id
      t.string :xml_url

      t.timestamps
    end
  end
end
