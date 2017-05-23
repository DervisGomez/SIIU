require 'test_helper'

class ProyectoControllerTest < ActionController::TestCase
  test "should get inscribir" do
    get :inscribir
    assert_response :success
  end

end
