class RoomMembersController < ApplicationController
  before_action :set_room_member, only: [:show, :edit, :update, :destroy]

  # GET /room_members
  # GET /room_members.json
  def index
    @room_members = RoomMember.all
  end

  # GET /room_members/1
  # GET /room_members/1.json
  def show
  end

  # GET /room_members/new
  def new
    @room_member = RoomMember.new
  end

  # GET /room_members/1/edit
  def edit
  end

  # POST /room_members
  # POST /room_members.json
  def create
    @room_member = RoomMember.new(room_member_params)

    respond_to do |format|
      if @room_member.save
        format.html { redirect_to @room_member, notice: 'Room member was successfully created.' }
        format.json { render :show, status: :created, location: @room_member }
      else
        format.html { render :new }
        format.json { render json: @room_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_members/1
  # PATCH/PUT /room_members/1.json
  def update
    respond_to do |format|
      if @room_member.update(room_member_params)
        format.html { redirect_to @room_member, notice: 'Room member was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_member }
      else
        format.html { render :edit }
        format.json { render json: @room_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_members/1
  # DELETE /room_members/1.json
  def destroy
    @room_member.destroy
    respond_to do |format|
      format.html { redirect_to room_members_url, notice: 'Room member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_member
      @room_member = RoomMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_member_params
      params.require(:room_member).permit(:member_id, :room_id)
    end
end
