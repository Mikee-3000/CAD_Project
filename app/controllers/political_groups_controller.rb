class PoliticalGroupsController < ApplicationController
  before_action :set_political_group, only: %i[ show edit update destroy ]

  # GET /political_groups or /political_groups.json
  def index
    @political_groups = PoliticalGroup.all
  end

  # GET /political_groups/1 or /political_groups/1.json
  def show
  end

  # GET /political_groups/new
  def new
    @political_group = PoliticalGroup.new
  end

  # GET /political_groups/1/edit
  def edit
  end

  # POST /political_groups or /political_groups.json
  def create
    @political_group = PoliticalGroup.new(political_group_params)

    respond_to do |format|
      if @political_group.save
        format.html { redirect_to political_group_url(@political_group), notice: "Political group was successfully created." }
        format.json { render :show, status: :created, location: @political_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @political_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /political_groups/1 or /political_groups/1.json
  def update
    respond_to do |format|
      if @political_group.update(political_group_params)
        format.html { redirect_to political_group_url(@political_group), notice: "Political group was successfully updated." }
        format.json { render :show, status: :ok, location: @political_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @political_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /political_groups/1 or /political_groups/1.json
  def destroy
    @political_group.destroy

    respond_to do |format|
      format.html { redirect_to political_groups_url, notice: "Political group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_political_group
      @political_group = PoliticalGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def political_group_params
      params.require(:political_group).permit(:name, :abbreviation, :description, :president, :current_meps, :website)
    end
end
