require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "get home" do
    get :home
    assert_response :success
  end

end
