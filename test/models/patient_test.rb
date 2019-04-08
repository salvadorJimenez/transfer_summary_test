# == Schema Information
#
# Table name: patients
#
#  id           :integer          not null, primary key
#  first_name   :string           not null
#  middle_name  :string
#  last_name    :string           not null
#  mr           :string
#  dob          :datetime
#  gender       :integer          default("male"), not null
#  facility_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  admission_id :integer
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  def setup
    @patient = patients(:one)
  end

  test 'a valid patient' do
    assert @patient.valid?
  end

  test 'an invalid patient, first_name, last_name cant be blank' do
    assert @patient.valid?
    @patient.first_name = ''

    refute @patient.valid?

    @patient.first_name = 'Name'
    @patient.last_name  = ''
    refute @patient.valid?
  end
end

