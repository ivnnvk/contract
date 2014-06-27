class OrderWaysController < ApplicationController
  before_action :set_order_way, only: [:show, :edit, :update, :destroy]

  # GET /order_ways
  # GET /order_ways.json
  def index
    @order_ways = OrderWay.all
  end

  # GET /order_ways/1
  # GET /order_ways/1.json
  def show
  end

  # GET /order_ways/new
  def new
    @order_way = OrderWay.new
  end

  # GET /order_ways/1/edit
  def edit
  end

  # POST /order_ways
  # POST /order_ways.json
  def create
    @order_way = OrderWay.new(order_way_params)

    respond_to do |format|
      if @order_way.save
        format.html { redirect_to @order_way, notice: 'Order way was successfully created.' }
        format.json { render :show, status: :created, location: @order_way }
      else
        format.html { render :new }
        format.json { render json: @order_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_ways/1
  # PATCH/PUT /order_ways/1.json
  def update
    respond_to do |format|
      if @order_way.update(order_way_params)
        format.html { redirect_to @order_way, notice: 'Order way was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_way }
      else
        format.html { render :edit }
        format.json { render json: @order_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_ways/1
  # DELETE /order_ways/1.json
  def destroy
    @order_way.destroy
    respond_to do |format|
      format.html { redirect_to order_ways_url, notice: 'Order way was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_way
      @order_way = OrderWay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_way_params
      params.require(:order_way).permit(:name)
    end
end
