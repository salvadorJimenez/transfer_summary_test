# == Schema Information
#
# Table name: patients
#
#  id           :integer          not null, primary key
#  first_name   :string           not null
#  middle_name  :string           not null
#  last_name    :string
#  mr           :string
#  dob          :datetime
#  gender       :integer          default("male"), not null
#  facility_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  admission_id :integer
#

class Patient < ApplicationRecord
  belongs_to :facility
  belongs_to :admission

  has_many :treatments
  has_many :diagnostic_procedures
  has_many :patient_allergies
  has_many :allergies, through: :patient_allergies
  has_many :diagnosis, as: :diagnosable
  has_many :medication_orders

  alias_attribute :medication_orders, :medications

  enum gender: [:male, :female, :other]
end
