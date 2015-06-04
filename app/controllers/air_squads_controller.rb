class AirSquadsController < ApplicationController
  before_action :set_air_squad, only: [:show, :edit, :update, :destroy]

  # GET /air_squads
  # GET /air_squads.json
  def index
    @air_squads = AirSquad.all
  end

  # GET /air_squads/1
  # GET /air_squads/1.json
  def show
  end

  # GET /air_squads/new
  def new
    @air_squad = AirSquad.new
    @room_choice = Room.order("name").collect do |r| [r.name] end
  end

  # GET /air_squads/1/edit
  def edit
    @room_choice = Room.order("name").collect do |r| [r.name] end
  end

  # POST /air_squads
  # POST /air_squads.json
  def create
    @air_squad = AirSquad.new(air_squad_params)

    respond_to do |format|
      if @air_squad.save
        format.html { redirect_to @air_squad, notice: 'Air squad was successfully created.' }
        format.json { render :show, status: :created, location: @air_squad }
      else
        format.html { render :new }
        format.json { render json: @air_squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_squads/1
  # PATCH/PUT /air_squads/1.json
  def update
    respond_to do |format|
      if @air_squad.update(air_squad_params)
        format.html { redirect_to @air_squad, notice: 'Air squad was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_squad }
      else
        format.html { render :edit }
        format.json { render json: @air_squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_squads/1
  # DELETE /air_squads/1.json
  def destroy
    @air_squad.destroy
    respond_to do |format|
      format.html { redirect_to air_squads_url, notice: 'Air squad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_squad
      @air_squad = AirSquad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_squad_params
      params.require(:air_squad).permit(:platoon, :squad, :room_id, :position_id)
    end
end
