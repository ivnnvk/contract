class WorkDiariesController < ApplicationController
  before_action :set_work_diary, only: [:show, :edit, :update, :destroy]

  # GET /work_diaries
  # GET /work_diaries.json
  def index
    @work_diaries = WorkDiary.all
  end

  # GET /work_diaries/1
  # GET /work_diaries/1.json
  def show
    @employees = Employee.all
    @contracts = Contract.all
    @from = @work_diary.from
    @to = @work_diary.to
    @submit_value = "Show"
    @hidden_submit = "hidden"
  end

  # GET /work_diaries/new
  def new
    @work_diary = WorkDiary.new
    @employees = Employee.all
    @contracts = Contract.all
    @from = Time.now()
    @to = Time.now()
    @submit_value = "Create"
    @hidden_submit = ""
  end

  # GET /work_diaries/1/edit
  def edit
    @employees = Employee.all
    @contracts = Contract.all
    @from = @work_diary.from
    @to = @work_diary.to
    @submit_value = "Update"
    @hidden_submit = ""
  end

  # POST /work_diaries
  # POST /work_diaries.json
  def create
    @work_diary = WorkDiary.new(work_diary_params)

    respond_to do |format|
      if @work_diary.save
        format.html { redirect_to @work_diary, notice: 'Work diary was successfully created.' }
        format.json { render :show, status: :created, location: @work_diary }
      else
        format.html { render :new }
        format.json { render json: @work_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_diaries/1
  # PATCH/PUT /work_diaries/1.json
  def update
    respond_to do |format|
      if @work_diary.update(work_diary_params)
        format.html { redirect_to @work_diary, notice: 'Work diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_diary }
      else
        format.html { render :edit }
        format.json { render json: @work_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_diaries/1
  # DELETE /work_diaries/1.json
  def destroy
    @work_diary.destroy
    respond_to do |format|
      format.html { redirect_to work_diaries_url, notice: 'Work diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_diary
      @work_diary = WorkDiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_diary_params
      params.require(:work_diary).permit(:doing, :from, :to, :employee_id, :contract_id)
    end
end
