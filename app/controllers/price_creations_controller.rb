class PriceCreationsController < ApplicationController
  before_action :set_price_creation, only: [:show, :edit, :update, :destroy]

  # GET /price_creations
  # GET /price_creations.json
  def index
    @price_creations = PriceCreation.all
  end

  # GET /price_creations/1
  # GET /price_creations/1.json
  def show
    @submit_value = "Show"
    @hidden_submit = "hidden"
  end

  # GET /price_creations/new
  def new
    @price_creation = PriceCreation.new
    @submit_value = "Create"
    @hidden_submit = ""
  end

  # GET /price_creations/1/edit
  def edit
    @submit_value = "Update"
    @hidden_submit = ""
  end

  # POST /price_creations
  # POST /price_creations.json
  def create
    @price_creation = PriceCreation.new(price_creation_params)

    respond_to do |format|
      if @price_creation.save
        format.html { redirect_to @price_creation, notice: 'Price creation was successfully created.' }
        format.json { render :show, status: :created, location: @price_creation }
      else
        format.html { render :new }
        format.json { render json: @price_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_creations/1
  # PATCH/PUT /price_creations/1.json
  def update
    respond_to do |format|
      if @price_creation.update(price_creation_params)
        format.html { redirect_to @price_creation, notice: 'Price creation was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_creation }
      else
        format.html { render :edit }
        format.json { render json: @price_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_creations/1
  # DELETE /price_creations/1.json
  def destroy
    @price_creation.destroy
    respond_to do |format|
      format.html { redirect_to price_creations_url, notice: 'Price creation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_creation
      @price_creation = PriceCreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_creation_params
      params.require(:price_creation).permit(:name)
    end
end
