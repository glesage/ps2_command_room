require 'test_helper'

class GroundSquadsControllerTest < ActionController::TestCase
  setup do
    @ground_squad = ground_squads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ground_squads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ground_squad" do
    assert_difference('GroundSquad.count') do
      post :create, ground_squad: { platoon: @ground_squad.platoon, position_id: @ground_squad.position_id, room_id: @ground_squad.room_id, squad: @ground_squad.squad }
    end

    assert_redirected_to ground_squad_path(assigns(:ground_squad))
  end

  test "should show ground_squad" do
    get :show, id: @ground_squad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ground_squad
    assert_response :success
  end

  test "should update ground_squad" do
    patch :update, id: @ground_squad, ground_squad: { platoon: @ground_squad.platoon, position_id: @ground_squad.position_id, room_id: @ground_squad.room_id, squad: @ground_squad.squad }
    assert_redirected_to ground_squad_path(assigns(:ground_squad))
  end

  test "should destroy ground_squad" do
    assert_difference('GroundSquad.count', -1) do
      delete :destroy, id: @ground_squad
    end

    assert_redirected_to ground_squads_path
  end
end
