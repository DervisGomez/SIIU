require 'test_helper'

class IniciarSesionControllerTest < ActionController::TestCase
  test "should get introducirCedula" do
    get :introducirCedula
    assert_response :success
  end

end
