require 'test_helper'

class ScraperTest < ActiveSupport::TestCase
  def setup
    @scraper = Scraper.new(name: "TED Main Channel", 
                          youtube_id: "UCAuUUnT6oDeKwE6v1NGQxug",
                          xml_url: "")
  end
  test "should be valid" do
    assert @scraper.valid?
  end

  test "name should be present" do
    @scraper.name = "    "
    assert_not @scraper.valid?
  end

  test "youtube_id should be present" do
    @scraper.youtube_id = "    "
    assert_not @scraper.valid?
  end

  test "name should be unique" do
    duplicate = @scraper.dup
    @scraper.save
    assert_not duplicate.valid?
  end

  test "youtube_id should be unique" do
    duplicate = @scraper.dup
    @scraper.save
    assert_not duplicate.valid?
  end
end