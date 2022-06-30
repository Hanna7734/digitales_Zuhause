class MitteilungensController < ApplicationController
  before_action :set_mitteilungen, only: %i[ show edit update destroy ]

  # GET /mitteilungens or /mitteilungens.json
  def index
    @mitteilungens = Mitteilungen.all
  end

  # GET /mitteilungens/1 or /mitteilungens/1.json
  def show
  end

  # GET /mitteilungens/new
  def new
    @mitteilungen = Mitteilungen.new
  end

  # GET /mitteilungens/1/edit
  def edit
  end

  # POST /mitteilungens or /mitteilungens.json
  def create
    @mitteilungen = Mitteilungen.new(mitteilungen_params)

    respond_to do |format|
      if @mitteilungen.save
        format.html { redirect_to mitteilungen_url(@mitteilungen), notice: "Mitteilungen was successfully created." }
        format.json { render :show, status: :created, location: @mitteilungen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mitteilungen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mitteilungens/1 or /mitteilungens/1.json
  def update
    respond_to do |format|
      if @mitteilungen.update(mitteilungen_params)
        format.html { redirect_to mitteilungen_url(@mitteilungen), notice: "Mitteilungen was successfully updated." }
        format.json { render :show, status: :ok, location: @mitteilungen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mitteilungen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mitteilungens/1 or /mitteilungens/1.json
  def destroy
    @mitteilungen.destroy

    respond_to do |format|
      format.html { redirect_to mitteilungens_url, notice: "Mitteilungen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mitteilungen
      @mitteilungen = Mitteilungen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mitteilungen_params
      params.require(:mitteilungen).permit(:mitteilungen, :updatesVorgänge)
    end
end
