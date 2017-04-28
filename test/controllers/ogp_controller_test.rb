require 'test_helper'

class OgpControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ogp_show_url
    assert_response :success
  end

end
