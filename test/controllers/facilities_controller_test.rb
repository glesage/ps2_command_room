require 'test_helper'

class FacilitiesControllerTest < ActionController::TestCase
  setup do
    @facility = facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility" do
    assert_difference('Facility.count') do
      post :create, facility: { faction: @facility.faction, map_id: @facility.map_id, name: @facility.name, position_id: @facility.position_id, ps2_id: @facility.ps2_id, type_id: @facility.type_id, type_name: @facility.type_name }
    end

    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should show facility" do
    get :show, id: @facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility
    assert_response :success
  end

  test "should update facility" do
    patch :update, id: @facility, facility: { faction: @facility.faction, map_id: @facility.map_id, name: @facility.name, position_id: @facility.position_id, ps2_id: @facility.ps2_id, type_id: @facility.type_id, type_name: @facility.type_name }
    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should destroy facility" do
    assert_difference('Facility.count', -1) do
      delete :destroy, id: @facility
    end

    assert_redirected_to facilities_path
  end
end
