class AfterHoursController < ApplicationController
  before_action :set_after_hour, only: [:show, :edit, :update, :destroy]

  # GET /after_hours
  # GET /after_hours.json
  def index
    @after_hours = AfterHour.all
  end

  # GET /after_hours/1
  # GET /after_hours/1.json
  def show
  end

  # GET /after_hours/new
  def new
    @after_hour = AfterHour.new
  end

  # GET /after_hours/1/edit
  def edit
  end

  # POST /after_hours
  # POST /after_hours.json
  def create
    @after_hour = AfterHour.new(after_hour_params)

    respond_to do |format|
      if @after_hour.save
        format.html { redirect_to @after_hour, notice: 'After hour was successfully created.' }
        format.json { render :show, status: :created, location: @after_hour }
      else
        format.html { render :new }
        format.json { render json: @after_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /after_hours/1
  # PATCH/PUT /after_hours/1.json
  def update
    respond_to do |format|
      if @after_hour.update(after_hour_params)
        format.html { redirect_to @after_hour, notice: 'After hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @after_hour }
      else
        format.html { render :edit }
        format.json { render json: @after_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /after_hours/1
  # DELETE /after_hours/1.json
  def destroy
    @after_hour.destroy
    respond_to do |format|
      format.html { redirect_to after_hours_url, notice: 'After hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_after_hour
      @after_hour = AfterHour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def after_hour_params
      params.require(:after_hour).permit(:name, :active)
    end
end
