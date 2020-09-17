class MegazinesController < ApplicationController
  before_action :set_megazine, only: [:show, :edit, :update, :destroy]

  # GET /megazines
  # GET /megazines.json
  def index
    @megazines = Megazine.all
  end

  # GET /megazines/1
  # GET /megazines/1.json
  def show
  end

  # GET /megazines/new
  def new
    @megazine = Megazine.new
  end

  # GET /megazines/1/edit
  def edit
  end

  # POST /megazines
  # POST /megazines.json
  def create
    @megazine = Megazine.new(megazine_params)

    respond_to do |format|
      if @megazine.save
        format.html { redirect_to @megazine, notice: 'Megazine was successfully created.' }
        format.json { render :show, status: :created, location: @megazine }
      else
        format.html { render :new }
        format.json { render json: @megazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /megazines/1
  # PATCH/PUT /megazines/1.json
  def update
    respond_to do |format|
      if @megazine.update(megazine_params)
        format.html { redirect_to @megazine, notice: 'Megazine was successfully updated.' }
        format.json { render :show, status: :ok, location: @megazine }
      else
        format.html { render :edit }
        format.json { render json: @megazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /megazines/1
  # DELETE /megazines/1.json
  def destroy
    @megazine.destroy
    respond_to do |format|
      format.html { redirect_to megazines_url, notice: 'Megazine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_megazine
      @megazine = Megazine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def megazine_params
      params.require(:megazine).permit(:name)
    end
end
