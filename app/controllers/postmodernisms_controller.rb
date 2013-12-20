class PostmodernismsController < ApplicationController
  before_action :set_postmodernism, only: [:show, :edit, :update, :destroy]

  # GET /postmodernisms
  # GET /postmodernisms.json
  def index
    @postmodernisms = Postmodernism.all
  end

  # GET /postmodernisms/1
  # GET /postmodernisms/1.json
  def show
  end

  # GET /postmodernisms/new
  def new
    @postmodernism = Postmodernism.new
  end

  # GET /postmodernisms/1/edit
  def edit
  end

  # POST /postmodernisms
  # POST /postmodernisms.json
  def create
    @postmodernism = Postmodernism.new(postmodernism_params)

    respond_to do |format|
      if @postmodernism.save
        format.html { redirect_to @postmodernism, notice: 'Postmodernism was successfully created.' }
        format.json { render action: 'show', status: :created, location: @postmodernism }
      else
        format.html { render action: 'new' }
        format.json { render json: @postmodernism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postmodernisms/1
  # PATCH/PUT /postmodernisms/1.json
  def update
    respond_to do |format|
      if @postmodernism.update(postmodernism_params)
        format.html { redirect_to @postmodernism, notice: 'Postmodernism was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @postmodernism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postmodernisms/1
  # DELETE /postmodernisms/1.json
  def destroy
    @postmodernism.destroy
    respond_to do |format|
      format.html { redirect_to postmodernisms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postmodernism
      @postmodernism = Postmodernism.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postmodernism_params
      params.require(:postmodernism).permit(:title, :author, :publisher, :year, :more)
    end
end
