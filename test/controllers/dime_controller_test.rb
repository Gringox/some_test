require 'test_helper'

class DimeControllerTest < ActionController::TestCase
  test "should get hola" do
    get :hola
    assert_response :success
  end

  test "should get chao" do
    get :chao
    assert_response :success
  end

end
