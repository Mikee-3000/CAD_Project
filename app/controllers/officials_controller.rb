class OfficialsController < ApplicationController
  before_action :set_official, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:create, :update, :destroy, :edit, :new]

  # GET /officials or /officials.json
  def index
    @officials = Official.all
  end

  # GET /officials/1 or /officials/1.json
  def show
  end

  # GET /officials/new
  def new
    @official = Official.new
  end

  # GET /officials/1/edit
  def edit
  end

  # POST /officials or /officials.json
  def create
    @official = Official.new(official_params)

    respond_to do |format|
      if @official.save
        format.html { redirect_to official_url(@official), notice: "Official was successfully created." }
        format.json { render :show, status: :created, location: @official }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @official.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officials/1 or /officials/1.json
  def update
    respond_to do |format|
      if @official.update(official_params)
        format.html { redirect_to official_url(@official), notice: "Official was successfully updated." }
        format.json { render :show, status: :ok, location: @official }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @official.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officials/1 or /officials/1.json
  def destroy
    @official.destroy

    respond_to do |format|
      format.html { redirect_to officials_url, notice: "Official was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_official
      @official = Official.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def official_params
      params.require(:official).permit(:name, :place_of_birth, :date_of_birth, :position, :affiliation, :bio, :website, :institution_id, :political_group_id)
    end
end
