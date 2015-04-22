require 'test_helper'

class RoomMembersControllerTest < ActionController::TestCase
  setup do
    @room_member = room_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_member" do
    assert_difference('RoomMember.count') do
      post :create, room_member: { member_id: @room_member.member_id, room_id: @room_member.room_id }
    end

    assert_redirected_to room_member_path(assigns(:room_member))
  end

  test "should show room_member" do
    get :show, id: @room_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_member
    assert_response :success
  end

  test "should update room_member" do
    patch :update, id: @room_member, room_member: { member_id: @room_member.member_id, room_id: @room_member.room_id }
    assert_redirected_to room_member_path(assigns(:room_member))
  end

  test "should destroy room_member" do
    assert_difference('RoomMember.count', -1) do
      delete :destroy, id: @room_member
    end

    assert_redirected_to room_members_path
  end
end
