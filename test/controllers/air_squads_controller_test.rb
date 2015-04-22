require 'test_helper'

class AirSquadsControllerTest < ActionController::TestCase
  setup do
    @air_squad = air_squads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:air_squads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air_squad" do
    assert_difference('AirSquad.count') do
      post :create, air_squad: { platoon: @air_squad.platoon, position_id: @air_squad.position_id, room_id: @air_squad.room_id, squad: @air_squad.squad }
    end

    assert_redirected_to air_squad_path(assigns(:air_squad))
  end

  test "should show air_squad" do
    get :show, id: @air_squad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @air_squad
    assert_response :success
  end

  test "should update air_squad" do
    patch :update, id: @air_squad, air_squad: { platoon: @air_squad.platoon, position_id: @air_squad.position_id, room_id: @air_squad.room_id, squad: @air_squad.squad }
    assert_redirected_to air_squad_path(assigns(:air_squad))
  end

  test "should destroy air_squad" do
    assert_difference('AirSquad.count', -1) do
      delete :destroy, id: @air_squad
    end

    assert_redirected_to air_squads_path
  end
end
