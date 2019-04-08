class PatientsController < ApplicationController
  def index
    patients
  end

  private

  def patients
    @patients ||= Patient.all
  end
end
