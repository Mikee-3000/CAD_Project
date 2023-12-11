class EuroAreasController < ApplicationController
  before_action :set_euro_area, only: %i[ show edit update destroy ]

  # GET /euro_areas or /euro_areas.json
  def index
    @euro_areas = EuroArea.all
  end

  # GET /euro_areas/1 or /euro_areas/1.json
  def show
  end

  # GET /euro_areas/new
  def new
    @euro_area = EuroArea.new
  end

  # GET /euro_areas/1/edit
  def edit
  end

  # POST /euro_areas or /euro_areas.json
  def create
    @euro_area = EuroArea.new(euro_area_params)

    respond_to do |format|
      if @euro_area.save
        format.html { redirect_to euro_area_url(@euro_area), notice: "Euro area was successfully created." }
        format.json { render :show, status: :created, location: @euro_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @euro_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /euro_areas/1 or /euro_areas/1.json
  def update
    respond_to do |format|
      if @euro_area.update(euro_area_params)
        format.html { redirect_to euro_area_url(@euro_area), notice: "Euro area was successfully updated." }
        format.json { render :show, status: :ok, location: @euro_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @euro_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /euro_areas/1 or /euro_areas/1.json
  def destroy
    @euro_area.destroy

    respond_to do |format|
      format.html { redirect_to euro_areas_url, notice: "Euro area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_euro_area
      @euro_area = EuroArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def euro_area_params
      params.require(:euro_area).permit(:short_description)
    end
end
