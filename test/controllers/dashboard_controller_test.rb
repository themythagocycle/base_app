require 'test_helper'

class DashboardControllerTest < ActionController::TestCase

  test 'get authenticated dashboard' do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    get :index
    assert_response :redirect
    sign_in users(:dick)
  end

  test 'get unauthenticated dashboard' do
    get :index
    assert_response :redirect
  end

end
