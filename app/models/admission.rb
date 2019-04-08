# == Schema Information
#
# Table name: admissions
#
#  id         :integer          not null, primary key
#  moment     :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admission < ApplicationRecord
  has_one :patient
  has_many :diagnosis, as: :diagnosable
  has_many :observations
  has_many :symptoms
end
