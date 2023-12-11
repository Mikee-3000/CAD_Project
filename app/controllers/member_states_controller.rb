class MemberStatesController < ApplicationController
  before_action :set_member_state, only: %i[ show edit update destroy ]

  # GET /member_states or /member_states.json
  def index
    @member_states = MemberState.all
  end

  # GET /member_states/1 or /member_states/1.json
  def show
  end

  # GET /member_states/new
  def new
    @member_state = MemberState.new
  end

  # GET /member_states/1/edit
  def edit
  end

  # POST /member_states or /member_states.json
  def create
    @member_state = MemberState.new(member_state_params)

    respond_to do |format|
      if @member_state.save
        format.html { redirect_to member_state_url(@member_state), notice: "Member state was successfully created." }
        format.json { render :show, status: :created, location: @member_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_states/1 or /member_states/1.json
  def update
    respond_to do |format|
      if @member_state.update(member_state_params)
        format.html { redirect_to member_state_url(@member_state), notice: "Member state was successfully updated." }
        format.json { render :show, status: :ok, location: @member_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_states/1 or /member_states/1.json
  def destroy
    @member_state.destroy

    respond_to do |format|
      format.html { redirect_to member_states_url, notice: "Member state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_state
      @member_state = MemberState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_state_params
      params.require(:member_state).permit(:name, :entry_date, :capital, :population, :number_meps, :euro_area_id, :schengen_area_id)
    end
end
