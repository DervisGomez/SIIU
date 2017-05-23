require 'test_helper'

class SistemaControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

end
