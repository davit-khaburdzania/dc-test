class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:update, :destroy]

  def update
    if @consultation.update(consultation_params)
      render json: @consultation
    else
      render json: @consultation.errors, status: :unprocessable_entity
    end
  end

  private
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end

    def consultation_params
      params.require(:consultation).permit(:name, :pain_site, :pain_note, :age, :location, :examination_notes, :date, :patient_id)
    end
end
