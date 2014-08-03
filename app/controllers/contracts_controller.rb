class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    @cadastral_offices = CadastralOffice.all
    @townships = Township.all
    @order_ways = OrderWay.all
    @order_types = OrderType.all
    @handover_ways = HandoverWay.all
    @price_creations = PriceCreation.all
    @customers = Customer.all
    @employees = Employee.all
    @acceptance_date = @contract.acceptance_date
    @submit_value = "Show"
    @hidden_submit = "hidden"
  end

  # GET /contracts/new
  def new
    @contract = Contract.new
    @cadastral_offices = CadastralOffice.all
    @townships = Township.all
    @order_ways = OrderWay.all
    @order_types = OrderType.all
    @handover_ways = HandoverWay.all
    @price_creations = PriceCreation.all
    @customers = Customer.all
    @employees = Employee.all
    @acceptance_date = Time.now
    @submit_value = "Create"
    @hidden_submit = ""
  end

  # GET /contracts/1/edit
  def edit
    @cadastral_offices = CadastralOffice.all
    @townships = Township.all
    @order_ways = OrderWay.all
    @order_types = OrderType.all
    @handover_ways = HandoverWay.all
    @price_creations = PriceCreation.all
    @customers = Customer.all
    @employees = Employee.all
    @acceptance_date = @contract.acceptance_date
    @submit_value = "Update"
    @hidden_submit = ""
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:contract_number, :record_number, :cadastral_territory, 
        :regarding_plat_numbers, :acceptance_date, :fulfilment_term, :contract_description,
        :order_number, :ordered_by, :order_phone, :bend_date, :make_out_date, :check_date,
        :unfulfill_reason, :sketch_number, :screened_date, :handover_date, :deliver_address,
        :agreed_price, :price_creation_specification, :information_from_CO_ect, :invoicing_foundations,
        :other_important_particulars, :customer_id, :cadastral_office_id, :township_id, 
        :responsible_id, :bend_id, :drawed_up_id, :checked_id, :screened_id, :order_way_id,
        :order_type_id, :handover_way_id, :price_creation_id) 
    end
end
