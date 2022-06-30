class StartseitesController < ApplicationController
  before_action :set_startseite, only: %i[ show edit update destroy ]

  # GET /startseites or /startseites.json
  def index
    @startseites = Startseite.all
  end

  # GET /startseites/1 or /startseites/1.json
  def show
  end

  # GET /startseites/new
  def new
    @startseite = Startseite.new
  end

  # GET /startseites/1/edit
  def edit
  end

  # POST /startseites or /startseites.json
  def create
    @startseite = Startseite.new(startseite_params)

    respond_to do |format|
      if @startseite.save
        format.html { redirect_to startseite_url(@startseite), notice: "Startseite was successfully created." }
        format.json { render :show, status: :created, location: @startseite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @startseite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startseites/1 or /startseites/1.json
  def update
    respond_to do |format|
      if @startseite.update(startseite_params)
        format.html { redirect_to startseite_url(@startseite), notice: "Startseite was successfully updated." }
        format.json { render :show, status: :ok, location: @startseite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @startseite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startseites/1 or /startseites/1.json
  def destroy
    @startseite.destroy

    respond_to do |format|
      format.html { redirect_to startseites_url, notice: "Startseite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startseite
      @startseite = Startseite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def startseite_params
      params.require(:startseite).permit(:angeforderteDaten, :letzteProzesse)
    end
end
