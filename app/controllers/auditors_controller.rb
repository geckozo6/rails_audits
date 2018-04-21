class AuditorsController < ApplicationController
  before_action :set_auditor, only: [:show, :edit, :update, :destroy]

  # GET /auditors
  # GET /auditors.json
  def index
    @auditors = Auditor.all
    @last_auditor = Auditor.last
  end

  # GET /auditors/1
  # GET /auditors/1.json
  def show
    @auditor = Auditor.find(params[:id])
    @auditor_samples = @auditor.samples.limit(10)
  end

  # GET /auditors/new
  def new
    @auditor = Auditor.new
  end

  # GET /auditors/1/edit
  def edit
  end

  # POST /auditors
  # POST /auditors.json
  def create
    @auditor = Auditor.new(auditor_params)

    respond_to do |format|
      if @auditor.save
        format.html { redirect_to @auditor, notice: 'Auditor was successfully created.' }
        format.json { render :show, status: :created, location: @auditor }
      else
        format.html { render :new }
        format.json { render json: @auditor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditors/1
  # PATCH/PUT /auditors/1.json
  def update
      respond_to do |format|
        if @auditor.update(auditor_params)
          format.html { redirect_to @auditor, notice: 'Auditor was successfully updated.' }
          format.json { render :show, status: :ok, location: @auditor }
        else
          format.html { render :edit }
          format.json { render json: @auditor.errors, status: :unprocessable_entity }
        end
      end
    end
  
  # DELETE /auditors/1
  # DELETE /auditors/1.json
  def destroy
    @auditor.destroy
    respond_to do |format|
      format.html { redirect_to auditors_url, notice: 'Auditor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auditor
      @auditor = Auditor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
    def auditor_params
          params.require(:auditor).permit(:name, :employee)
    end
    
end
