class ApologeticsController < ApplicationController
  before_action :set_apologetic, only: [:show, :edit, :update, :destroy]

  # GET /apologetics
  # GET /apologetics.json
  def index
    @apologetics = Apologetic.all
  end

  # GET /apologetics/1
  # GET /apologetics/1.json
  def show
  end

  # GET /apologetics/new
  def new
    @apologetic = Apologetic.new
  end

  # GET /apologetics/1/edit
  def edit
  end

  # POST /apologetics
  # POST /apologetics.json
  def create
    @apologetic = Apologetic.new(apologetic_params)

    respond_to do |format|
      if @apologetic.save
        format.html { redirect_to @apologetic, notice: 'Apologetic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @apologetic }
      else
        format.html { render action: 'new' }
        format.json { render json: @apologetic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apologetics/1
  # PATCH/PUT /apologetics/1.json
  def update
    respond_to do |format|
      if @apologetic.update(apologetic_params)
        format.html { redirect_to @apologetic, notice: 'Apologetic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apologetic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apologetics/1
  # DELETE /apologetics/1.json
  def destroy
    @apologetic.destroy
    respond_to do |format|
      format.html { redirect_to apologetics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apologetic
      @apologetic = Apologetic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apologetic_params
      params.require(:apologetic).permit(:title, :author, :publisher, :year, :more)
    end
end
