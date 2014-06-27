class UsageSourcesController < ApplicationController
  before_action :set_usage_source, only: [:show, :edit, :update, :destroy]

  # GET /usage_sources
  # GET /usage_sources.json
  def index
    @usage_sources = UsageSource.all
  end

  # GET /usage_sources/1
  # GET /usage_sources/1.json
  def show
  end

  # GET /usage_sources/new
  def new
    @usage_source = UsageSource.new
  end

  # GET /usage_sources/1/edit
  def edit
  end

  # POST /usage_sources
  # POST /usage_sources.json
  def create
    @usage_source = UsageSource.new(usage_source_params)

    respond_to do |format|
      if @usage_source.save
        format.html { redirect_to @usage_source, notice: 'Usage source was successfully created.' }
        format.json { render :show, status: :created, location: @usage_source }
      else
        format.html { render :new }
        format.json { render json: @usage_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usage_sources/1
  # PATCH/PUT /usage_sources/1.json
  def update
    respond_to do |format|
      if @usage_source.update(usage_source_params)
        format.html { redirect_to @usage_source, notice: 'Usage source was successfully updated.' }
        format.json { render :show, status: :ok, location: @usage_source }
      else
        format.html { render :edit }
        format.json { render json: @usage_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usage_sources/1
  # DELETE /usage_sources/1.json
  def destroy
    @usage_source.destroy
    respond_to do |format|
      format.html { redirect_to usage_sources_url, notice: 'Usage source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usage_source
      @usage_source = UsageSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usage_source_params
      params[:usage_source]
    end
end