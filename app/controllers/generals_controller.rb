class GeneralsController < ApplicationController
  before_action :set_general, only: [:show, :edit, :update, :destroy]

  # GET /generals
  # GET /generals.json
  def index
    @generals = General.all
  end

  # GET /generals/1
  # GET /generals/1.json
  def show
  end

  # GET /generals/new
  def new
    @general = General.new
  end

  # GET /generals/1/edit
  def edit
  end

  # POST /generals
  # POST /generals.json
  def create
    @general = General.new(general_params)

    respond_to do |format|
      if @general.save
        format.html { redirect_to @general, notice: 'General was successfully created.' }
        format.json { render action: 'show', status: :created, location: @general }
      else
        format.html { render action: 'new' }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generals/1
  # PATCH/PUT /generals/1.json
  def update
    respond_to do |format|
      if @general.update(general_params)
        format.html { redirect_to @general, notice: 'General was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generals/1
  # DELETE /generals/1.json
  def destroy
    @general.destroy
    respond_to do |format|
      format.html { redirect_to generals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general
      @general = General.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_params
      params.require(:general).permit(:title, :author, :publisher, :year, :more)
    end
end
