# frozen_string_literal: true

require 'test_helper'

class FacilitiesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @patient = patients(:one)
  end

  test 'GET #show' do
    get patient_facility_path(@patient)
    assert_response :success
  end
end
