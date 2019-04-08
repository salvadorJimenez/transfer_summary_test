# == Schema Information
#
# Table name: diagnoses
#
#  id               :integer          not null, primary key
#  coding_system    :string
#  code             :string           not null
#  description      :text
#  type             :string           default("Diagnosis"), not null
#  diagnosable_type :string
#  diagnosable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class DiagnosisTest < ActiveSupport::TestCase
  def setup
    @patient = patients(:one)
    @admission = admissions(:one)
  end

  test 'valid diagnoses' do
    diagnosis = @patient.diagnoses.build(
      code: '111',
      description: 'cool description'
    )
    assert diagnosis.valid?
  end

  test 'invalid diagnoses, code and description cant be blank' do
    diagnosis = @patient.diagnoses.build(
      code: '',
      description: 'cool description'
    )
    refute diagnosis.valid?

    diagnosis = @patient.diagnoses.build(
      code: '111',
      description: ''
    )

    refute diagnosis.valid?
  end

  test 'Diagnoses is a polymorphic table' do
    diagnosis = @patient.diagnoses.build(
      code: '111',
      description: 'cool description'
    )

    assert_equal 'Patient', diagnosis.diagnosable_type

    diagnosis = @admission.diagnoses.build(
      code: '111',
      description: 'cool description'
    )

    assert_equal 'Admission', diagnosis.diagnosable_type
  end
end
