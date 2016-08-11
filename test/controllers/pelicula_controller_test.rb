require 'test_helper'

class PeliculaControllerTest < ActionController::TestCase
  test "should get crear" do
    get :crear
    assert_response :success
  end

  test "should get ver" do
    get :ver
    assert_response :success
  end

  test "should get actualizar" do
    get :actualizar
    assert_response :success
  end

  test "should get destruir" do
    get :destruir
    assert_response :success
  end

end
