class GroundSquadsController < ApplicationController
  before_action :set_ground_squad, only: [:show, :edit, :update, :destroy]

  # GET /ground_squads
  # GET /ground_squads.json
  def index
    @ground_squads = GroundSquad.all
  end

  # GET /ground_squads/1
  # GET /ground_squads/1.json
  def show
  end

  # GET /ground_squads/new
  def new
    @ground_squad = GroundSquad.new
  end

  # GET /ground_squads/1/edit
  def edit
  end

  # POST /ground_squads
  # POST /ground_squads.json
  def create
    @ground_squad = GroundSquad.new(ground_squad_params)

    respond_to do |format|
      if @ground_squad.save
        format.html { redirect_to @ground_squad, notice: 'Ground squad was successfully created.' }
        format.json { render :show, status: :created, location: @ground_squad }
      else
        format.html { render :new }
        format.json { render json: @ground_squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ground_squads/1
  # PATCH/PUT /ground_squads/1.json
  def update
    respond_to do |format|
      if @ground_squad.update(ground_squad_params)
        format.html { redirect_to @ground_squad, notice: 'Ground squad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ground_squad }
      else
        format.html { render :edit }
        format.json { render json: @ground_squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ground_squads/1
  # DELETE /ground_squads/1.json
  def destroy
    @ground_squad.destroy
    respond_to do |format|
      format.html { redirect_to ground_squads_url, notice: 'Ground squad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ground_squad
      @ground_squad = GroundSquad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ground_squad_params
      params.require(:ground_squad).permit(:platoon, :squad, :room_id, :position_id)
    end
end
