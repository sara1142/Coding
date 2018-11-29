require 'test_helper'

class LevelsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get levels_show_url
    assert_response :success
  end

end
