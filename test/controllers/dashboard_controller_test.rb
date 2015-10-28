require 'test_helper'

class DashboardControllerTest < ActionController::TestCase

  test 'get authenticated dashboard' do
    @user = users(:dick)
    sign_in @user
    get :index
    assert_response :success
  end

  test 'get unauthenticated dashboard' do
    get :index
    assert_response :redirect
  end

end
