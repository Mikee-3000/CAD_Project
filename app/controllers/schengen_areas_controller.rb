class SchengenAreasController < ApplicationController
  before_action :set_schengen_area, only: %i[ show edit update destroy ]

  # GET /schengen_areas or /schengen_areas.json
  def index
    @schengen_areas = SchengenArea.all
  end

  # GET /schengen_areas/1 or /schengen_areas/1.json
  def show
  end

  # GET /schengen_areas/new
  def new
    @schengen_area = SchengenArea.new
  end

  # GET /schengen_areas/1/edit
  def edit
  end

  # POST /schengen_areas or /schengen_areas.json
  def create
    @schengen_area = SchengenArea.new(schengen_area_params)

    respond_to do |format|
      if @schengen_area.save
        format.html { redirect_to schengen_area_url(@schengen_area), notice: "Schengen area was successfully created." }
        format.json { render :show, status: :created, location: @schengen_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schengen_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schengen_areas/1 or /schengen_areas/1.json
  def update
    respond_to do |format|
      if @schengen_area.update(schengen_area_params)
        format.html { redirect_to schengen_area_url(@schengen_area), notice: "Schengen area was successfully updated." }
        format.json { render :show, status: :ok, location: @schengen_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schengen_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schengen_areas/1 or /schengen_areas/1.json
  def destroy
    @schengen_area.destroy

    respond_to do |format|
      format.html { redirect_to schengen_areas_url, notice: "Schengen area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schengen_area
      @schengen_area = SchengenArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schengen_area_params
      params.require(:schengen_area).permit(:short_description)
    end
end
