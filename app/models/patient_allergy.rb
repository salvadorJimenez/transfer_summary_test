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

class PatientAllergy < ApplicationRecord
  belongs_to :patient
  belongs_to :allergy
end
