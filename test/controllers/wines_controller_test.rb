require 'test_helper'

class WinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wines)
  end

  test "should get show" do
    get :show, id: wines(:Flop).id
    assert_response :success
    wine = assigns(:wine)
    assert_not_nil wine
    assert_equal "Flip Flop", wine.name
  end
end