require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get :show" do
    get home_:show_url
    assert_response :success
  end

end
