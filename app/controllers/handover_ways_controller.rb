class HandoverWaysController < ApplicationController
  before_action :set_handover_way, only: [:show, :edit, :update, :destroy]

  # GET /handover_ways
  # GET /handover_ways.json
  def index
    @handover_ways = HandoverWay.all
  end

  # GET /handover_ways/1
  # GET /handover_ways/1.json
  def show
    @submit_value = "Show"
    @hidden_submit = "hidden"
  end

  # GET /handover_ways/new
  def new
    @handover_way = HandoverWay.new
    @submit_value = "Create"
    @hidden_submit = ""
  end

  # GET /handover_ways/1/edit
  def edit
    @submit_value = "Update"
    @hidden_submit = ""
  end

  # POST /handover_ways
  # POST /handover_ways.json
  def create
    @handover_way = HandoverWay.new(handover_way_params)

    respond_to do |format|
      if @handover_way.save
        format.html { redirect_to @handover_way, notice: 'Handover way was successfully created.' }
        format.json { render :show, status: :created, location: @handover_way }
      else
        format.html { render :new }
        format.json { render json: @handover_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handover_ways/1
  # PATCH/PUT /handover_ways/1.json
  def update
    respond_to do |format|
      if @handover_way.update(handover_way_params)
        format.html { redirect_to @handover_way, notice: 'Handover way was successfully updated.' }
        format.json { render :show, status: :ok, location: @handover_way }
      else
        format.html { render :edit }
        format.json { render json: @handover_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handover_ways/1
  # DELETE /handover_ways/1.json
  def destroy
    @handover_way.destroy
    respond_to do |format|
      format.html { redirect_to handover_ways_url, notice: 'Handover way was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handover_way
      @handover_way = HandoverWay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def handover_way_params
      params.require(:handover_way).permit(:name)
    end
end
