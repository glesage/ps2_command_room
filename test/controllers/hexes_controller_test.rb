require 'test_helper'

class HexesControllerTest < ActionController::TestCase
  setup do
    @hex = hexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hex" do
    assert_difference('Hex.count') do
      post :create, hex: { facility_id: @hex.facility_id, position_id: @hex.position_id, type: @hex.type }
    end

    assert_redirected_to hex_path(assigns(:hex))
  end

  test "should show hex" do
    get :show, id: @hex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hex
    assert_response :success
  end

  test "should update hex" do
    patch :update, id: @hex, hex: { facility_id: @hex.facility_id, position_id: @hex.position_id, type: @hex.type }
    assert_redirected_to hex_path(assigns(:hex))
  end

  test "should destroy hex" do
    assert_difference('Hex.count', -1) do
      delete :destroy, id: @hex
    end

    assert_redirected_to hexes_path
  end
end
