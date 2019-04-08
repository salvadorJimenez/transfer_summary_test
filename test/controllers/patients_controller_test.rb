# frozen_string_literal: true

require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test 'GET #index' do
    get patients_path
    assert_response :success
  end
end
