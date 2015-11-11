class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  def index
    @patients = Patient.all
    render json: @patients.to_json(include: :consultations)
  end

  def show
    render json: @patient.to_json(include: :consultations)
  end

  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :gender, :date_birth, :country, :city, :street, :title, :color, :url, :blog, :height, :weight, :email, :frequence, :money, :phone)
    end
end
