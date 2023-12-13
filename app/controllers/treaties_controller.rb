class TreatiesController < ApplicationController
  before_action :set_treaty, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:create, :update, :destroy, :edit, :new]

  # GET /treaties or /treaties.json
  def index
    @treaties = Treaty.all
  end

  # GET /treaties/1 or /treaties/1.json
  def show
  end

  # GET /treaties/new
  def new
    @treaty = Treaty.new
  end

  # GET /treaties/1/edit
  def edit
  end

  # POST /treaties or /treaties.json
  def create
    @treaty = Treaty.new(treaty_params)

    respond_to do |format|
      if @treaty.save
        format.html { redirect_to treaty_url(@treaty), notice: "Treaty was successfully created." }
        format.json { render :show, status: :created, location: @treaty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @treaty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treaties/1 or /treaties/1.json
  def update
    respond_to do |format|
      if @treaty.update(treaty_params)
        format.html { redirect_to treaty_url(@treaty), notice: "Treaty was successfully updated." }
        format.json { render :show, status: :ok, location: @treaty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @treaty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treaties/1 or /treaties/1.json
  def destroy
    @treaty.destroy

    respond_to do |format|
      format.html { redirect_to treaties_url, notice: "Treaty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treaty
      @treaty = Treaty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treaty_params
      params.require(:treaty).permit(:name, :date_of_signing, :place_of_signing, :active)
    end
end
