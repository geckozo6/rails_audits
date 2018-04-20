class AuditorController < ApplicationController
  def index
    @auditors = Auditor.all
  end

  def show
  end

  def new
    @auditor= Auditor.new
  end

  def edit
  end

  def destroy
    @auditor.destroy
  end
  
  private
      # Use callbacks to share common setup or constraints between actions.
      def set_auditor
        @auditor = Auditor.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def auditors_params
        params.require(:auditor).permit(:name, :employee, :birth, :status)
      end
  
end
