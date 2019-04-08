# == Schema Information
#
# Table name: diagnostic_procedures
#
#  id          :integer          not null, primary key
#  description :text             not null
#  moment      :datetime         not null
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DiagnosticProcedureTest < ActiveSupport::TestCase
  def setup
    @patient = patients(:one)
  end

  test 'valid diagnostic procesure' do
    dp = @patient.diagnostic_procedures.build(
      description: 'cool description',
      moment: Time.zone.now
    )

    assert dp.valid?
  end

  test 'invalid diagnostic procedure description and moment cant be blank' do
    dp = @patient.diagnostic_procedures.build(
      description: 'cool description',
      moment: ''
    )

    refute dp.valid?

    dp = @patient.diagnostic_procedures.build(
      description: '',
      moment: Time.zone.now
    )

    refute dp.valid?
  end

end
