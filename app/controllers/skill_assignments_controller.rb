class SkillAssignmentsController < ApplicationController
  before_action :set_skill_assignment, only: [:show, :edit, :update, :destroy]

  # GET /skill_assignments
  # GET /skill_assignments.json
  def index
    @skill_assignments = SkillAssignment.all
  end

  # GET /skill_assignments/1
  # GET /skill_assignments/1.json
  def show
  end

  # GET /skill_assignments/new
  def new
    @skill_assignment = SkillAssignment.new
  end

  # GET /skill_assignments/1/edit
  def edit
  end

  # POST /skill_assignments
  # POST /skill_assignments.json
  def create
    @skill_assignment = SkillAssignment.new(skill_assignment_params)

    respond_to do |format|
      if @skill_assignment.save
        format.html { redirect_to @skill_assignment, notice: 'Skill assignment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @skill_assignment }
      else
        format.html { render action: 'new' }
        format.json { render json: @skill_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_assignments/1
  # PATCH/PUT /skill_assignments/1.json
  def update
    respond_to do |format|
      if @skill_assignment.update(skill_assignment_params)
        format.html { redirect_to @skill_assignment, notice: 'Skill assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skill_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_assignments/1
  # DELETE /skill_assignments/1.json
  def destroy
    @skill_assignment.destroy
    respond_to do |format|
      format.html { redirect_to skill_assignments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_assignment
      @skill_assignment = SkillAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_assignment_params
      params[:skill_assignment]
    end
end
