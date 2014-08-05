class CadastralOfficesController < ApplicationController
  before_action :set_cadastral_office, only: [:show, :edit, :update, :destroy]

  # GET /cadastral_offices
  # GET /cadastral_offices.json
  def index
    @cadastral_offices = CadastralOffice.all
  end

  # GET /cadastral_offices/1
  # GET /cadastral_offices/1.json
  def show
    @submit_value = "Show"
    @hidden_submit = "hidden"
  end

  # GET /cadastral_offices/new
  def new
    @cadastral_office = CadastralOffice.new
    @submit_value = "Create"
    @hidden_submit = ""
  end

  # GET /cadastral_offices/1/edit
  def edit
    @submit_value = "Update"
    @hidden_submit = ""
  end

  # POST /cadastral_offices
  # POST /cadastral_offices.json
  def create
    @cadastral_office = CadastralOffice.new(cadastral_office_params)

    respond_to do |format|
      if @cadastral_office.save
        format.html { redirect_to @cadastral_office, notice: 'Cadastral office was successfully created.' }
        format.json { render :show, status: :created, location: @cadastral_office }
      else
        format.html { render :new }
        format.json { render json: @cadastral_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastral_offices/1
  # PATCH/PUT /cadastral_offices/1.json
  def update
    respond_to do |format|
      if @cadastral_office.update(cadastral_office_params)
        format.html { redirect_to @cadastral_office, notice: 'Cadastral office was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastral_office }
      else
        format.html { render :edit }
        format.json { render json: @cadastral_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastral_offices/1
  # DELETE /cadastral_offices/1.json
  def destroy
    @cadastral_office.destroy
    respond_to do |format|
      format.html { redirect_to cadastral_offices_url, notice: 'Cadastral office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastral_office
      @cadastral_office = CadastralOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastral_office_params
      params.require(:cadastral_office).permit(:name)
    end
end
