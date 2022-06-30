class ZugiffsberechtigungensController < ApplicationController
  before_action :set_zugiffsberechtigungen, only: %i[ show edit update destroy ]

  # GET /zugiffsberechtigungens or /zugiffsberechtigungens.json
  def index
    @zugiffsberechtigungens = Zugiffsberechtigungen.all
  end

  # GET /zugiffsberechtigungens/1 or /zugiffsberechtigungens/1.json
  def show
  end

  # GET /zugiffsberechtigungens/new
  def new
    @zugiffsberechtigungen = Zugiffsberechtigungen.new
  end

  # GET /zugiffsberechtigungens/1/edit
  def edit
  end

  # POST /zugiffsberechtigungens or /zugiffsberechtigungens.json
  def create
    @zugiffsberechtigungen = Zugiffsberechtigungen.new(zugiffsberechtigungen_params)

    respond_to do |format|
      if @zugiffsberechtigungen.save
        format.html { redirect_to zugiffsberechtigungen_url(@zugiffsberechtigungen), notice: "Zugiffsberechtigungen was successfully created." }
        format.json { render :show, status: :created, location: @zugiffsberechtigungen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zugiffsberechtigungen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zugiffsberechtigungens/1 or /zugiffsberechtigungens/1.json
  def update
    respond_to do |format|
      if @zugiffsberechtigungen.update(zugiffsberechtigungen_params)
        format.html { redirect_to zugiffsberechtigungen_url(@zugiffsberechtigungen), notice: "Zugiffsberechtigungen was successfully updated." }
        format.json { render :show, status: :ok, location: @zugiffsberechtigungen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zugiffsberechtigungen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zugiffsberechtigungens/1 or /zugiffsberechtigungens/1.json
  def destroy
    @zugiffsberechtigungen.destroy

    respond_to do |format|
      format.html { redirect_to zugiffsberechtigungens_url, notice: "Zugiffsberechtigungen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zugiffsberechtigungen
      @zugiffsberechtigungen = Zugiffsberechtigungen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zugiffsberechtigungen_params
      params.require(:zugiffsberechtigungen).permit(:krankenhaus, :elternkasse, :familienkasse, :standesamt, :bZST)
    end
end
