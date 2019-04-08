class FacilitiesController < ApplicationController
  def show
    facility
    patient
  end

  private

  def patient
    @patient ||= Patient.find(params[:patient_id])
  end

  def facility
    @facility ||= patient.facility
  end
end
