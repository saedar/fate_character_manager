class ExtraAssignmentsController < ApplicationController
  before_action :set_extra_assignment, only: [:show, :edit, :update, :destroy]

  # GET /extra_assignments
  # GET /extra_assignments.json
  def index
    @extra_assignments = ExtraAssignment.all
  end

  # GET /extra_assignments/1
  # GET /extra_assignments/1.json
  def show
  end

  # GET /extra_assignments/new
  def new
    @extra_assignment = ExtraAssignment.new
  end

  # GET /extra_assignments/1/edit
  def edit
  end

  # POST /extra_assignments
  # POST /extra_assignments.json
  def create
    @character = Character.find(params[:character_id])
    @extra_assignment = @character.extra_assignments.create!(extra_assignment_params)

    redirect_to @character, notice: 'Extra Added!'
  end

  # PATCH/PUT /extra_assignments/1
  # PATCH/PUT /extra_assignments/1.json
  def update
    respond_to do |format|
      if @extra_assignment.update(extra_assignment_params)
        format.html { redirect_to @extra_assignment, notice: 'Extra assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @extra_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_assignments/1
  # DELETE /extra_assignments/1.json
  def destroy
    @extra_assignment.destroy
    respond_to do |format|
      format.html { redirect_to @character }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_assignment
      @character = Character.find(params[:character_id])
      @extra_assignment = @character.extra_assignments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extra_assignment_params
      params.require(:extra_assignment).permit(:character_id, :extra_id)
    end
end
