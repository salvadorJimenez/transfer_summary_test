# == Schema Information
#
# Table name: allergies
#
#  id          :integer          not null, primary key
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AllergyTest < ActiveSupport::TestCase
  def setup
    @patient = patients(:one)
  end

  test 'valid allergy' do
    allergy = @patient.allergies.build(description: 'ants')
    assert allergy.valid?
  end

  test 'invalid allergy, description cant be blank' do
    allergy = @patient.allergies.build(description: '')
    refute allergy.valid?
  end
end
