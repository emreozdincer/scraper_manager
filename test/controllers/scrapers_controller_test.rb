require 'test_helper'

class ScrapersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get scrapers_new_url
    assert_response :success
  end

end
