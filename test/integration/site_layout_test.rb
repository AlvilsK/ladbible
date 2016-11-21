require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  def setup
    # User from fixtures
  end
  
  test "layout links when not logged in" do
    get root_path
    assert_template 'static_pages/index'
  end
  
  test "layout links when logged in" do
    # Tests here
  end
end
