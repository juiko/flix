require 'test_helper'

class StartupControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
