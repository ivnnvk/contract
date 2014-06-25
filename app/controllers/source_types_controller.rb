class SourceTypesController < ApplicationController
  before_action :set_source_type, only: [:show, :edit, :update, :destroy]

  # GET /source_types
  # GET /source_types.json
  def index
    @source_types = SourceType.all
  end

  # GET /source_types/1
  # GET /source_types/1.json
  def show
  end

  # GET /source_types/new
  def new
    @source_type = SourceType.new
  end

  # GET /source_types/1/edit
  def edit
  end

  # POST /source_types
  # POST /source_types.json
  def create
    @source_type = SourceType.new(source_type_params)

    respond_to do |format|
      if @source_type.save
        format.html { redirect_to @source_type, notice: 'Source type was successfully created.' }
        format.json { render :show, status: :created, location: @source_type }
      else
        format.html { render :new }
        format.json { render json: @source_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_types/1
  # PATCH/PUT /source_types/1.json
  def update
    respond_to do |format|
      if @source_type.update(source_type_params)
        format.html { redirect_to @source_type, notice: 'Source type was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_type }
      else
        format.html { render :edit }
        format.json { render json: @source_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_types/1
  # DELETE /source_types/1.json
  def destroy
    @source_type.destroy
    respond_to do |format|
      format.html { redirect_to source_types_url, notice: 'Source type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_type
      @source_type = SourceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_type_params
      params.require(:source_type).permit(:name)
    end
end
