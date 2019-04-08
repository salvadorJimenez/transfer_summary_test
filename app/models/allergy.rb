# == Schema Information
#
# Table name: allergies
#
#  id          :integer          not null, primary key
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Allergy < ApplicationRecord
  has_many :patient_allergies
  has_many :patients, through: :patient_allergies
end
