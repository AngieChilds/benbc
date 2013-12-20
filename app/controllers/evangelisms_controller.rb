class EvangelismsController < ApplicationController
  before_action :set_evangelism, only: [:show, :edit, :update, :destroy]

  # GET /evangelisms
  # GET /evangelisms.json
  def index
    @evangelisms = Evangelism.all
  end

  # GET /evangelisms/1
  # GET /evangelisms/1.json
  def show
  end

  # GET /evangelisms/new
  def new
    @evangelism = Evangelism.new
  end

  # GET /evangelisms/1/edit
  def edit
  end

  # POST /evangelisms
  # POST /evangelisms.json
  def create
    @evangelism = Evangelism.new(evangelism_params)

    respond_to do |format|
      if @evangelism.save
        format.html { redirect_to @evangelism, notice: 'Evangelism was successfully created.' }
        format.json { render action: 'show', status: :created, location: @evangelism }
      else
        format.html { render action: 'new' }
        format.json { render json: @evangelism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evangelisms/1
  # PATCH/PUT /evangelisms/1.json
  def update
    respond_to do |format|
      if @evangelism.update(evangelism_params)
        format.html { redirect_to @evangelism, notice: 'Evangelism was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @evangelism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evangelisms/1
  # DELETE /evangelisms/1.json
  def destroy
    @evangelism.destroy
    respond_to do |format|
      format.html { redirect_to evangelisms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evangelism
      @evangelism = Evangelism.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evangelism_params
      params.require(:evangelism).permit(:title, :author, :publisher, :year, :more)
    end
end
