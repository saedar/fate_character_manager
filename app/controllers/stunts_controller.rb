class StuntsController < ApplicationController
  before_action :set_stunt, only: [:show, :edit, :update, :destroy]

  # GET /stunts
  # GET /stunts.json
  def index
    @stunts = Stunt.all
  end

  # GET /stunts/1
  # GET /stunts/1.json
  def show
  end

  # GET /stunts/new
  def new
    @stunt = Stunt.new
  end

  # GET /stunts/1/edit
  def edit
  end

  # POST /stunts
  # POST /stunts.json
  def create
    @character = Character.find(params[:character_id])
    @stunt = @character.stunts.create!(stunt_params)

    redirect_to @character, notice: 'Stunt Created!'
  end

  # PATCH/PUT /stunts/1
  # PATCH/PUT /stunts/1.json
  def update
    respond_to do |format|
      if @stunt.update(stunt_params)
        format.html { redirect_to @stunt, notice: 'Stunt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stunts/1
  # DELETE /stunts/1.json
  def destroy
    @stunt.destroy
    respond_to do |format|
      format.html { redirect_to stunts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stunt
      @stunt = Stunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stunt_params
      params.require(:stunt).permit(:name, :description)
    end
end
