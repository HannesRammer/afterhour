class AfterhourmodsController < ApplicationController
  before_action :set_afterhourmod, only: [:show, :edit, :update, :destroy]

  # GET /afterhourmods
  # GET /afterhourmods.json
  def index
    @afterhourmods = Afterhourmod.all
  end

  # GET /afterhourmods/1
  # GET /afterhourmods/1.json
  def show
  end

  # GET /afterhourmods/new
  def new
    @afterhourmod = Afterhourmod.new
  end

  # GET /afterhourmods/1/edit
  def edit
  end

  # POST /afterhourmods
  # POST /afterhourmods.json
  def create
    @afterhourmod = Afterhourmod.new(afterhourmod_params)

    respond_to do |format|
      if @afterhourmod.save
        format.html { redirect_to @afterhourmod, notice: 'Afterhourmod was successfully created.' }
        format.json { render :show, status: :created, location: @afterhourmod }
      else
        format.html { render :new }
        format.json { render json: @afterhourmod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /afterhourmods/1
  # PATCH/PUT /afterhourmods/1.json
  def update
    respond_to do |format|
      if @afterhourmod.update(afterhourmod_params)
        format.html { redirect_to @afterhourmod, notice: 'Afterhourmod was successfully updated.' }
        format.json { render :show, status: :ok, location: @afterhourmod }
      else
        format.html { render :edit }
        format.json { render json: @afterhourmod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afterhourmods/1
  # DELETE /afterhourmods/1.json
  def destroy
    @afterhourmod.destroy
    respond_to do |format|
      format.html { redirect_to afterhourmods_url, notice: 'Afterhourmod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_afterhourmod
      @afterhourmod = Afterhourmod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def afterhourmod_params
      params.fetch(:afterhourmod, {})
    end
end
