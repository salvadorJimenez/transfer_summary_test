# == Schema Information
#
# Table name: patient_allergies
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  allergy_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PatientAllergyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
