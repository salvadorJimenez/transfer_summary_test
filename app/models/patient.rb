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

class Patient < ApplicationRecord
  belongs_to :facility
  belongs_to :admission

  has_many :treatments
  has_many :diagnostic_procedures
  has_many :patient_allergies
  has_many :allergies, through: :patient_allergies
  has_many :chronic_conditions, as: :diagnosable
  has_many :diagnoses, as: :diagnosable
  has_many :medication_orders

  alias_attribute :medications, :medication_orders

  enum gender: [:male, :female, :other]

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def age
    ((Time.zone.now - dob.to_time) / 1.year.seconds).floor + 1
  end

  def medications_string
    arr_medications = medications.map do |medication|
      "#{medication.name} #{medication.dosage}#{medication.unit} #{medication.route} #{medication.frequency.value}#{medication.frequency.unit} to #{medication.necessity}"
    end
    arr_medications.to_sentence
  end

  def diagnostic_procedures_string
    arr_dp = diagnostic_procedures.map do |dp|
      "#{dp.description} on #{dp.date} at #{dp.time}"
    end
    arr_dp.to_sentence
  end

  def treatments_string
    arr_treatments = treatments.map do |tr|
      "#{tr.description} to #{tr.necessity}"
    end
    arr_treatments.to_sentence
  end
end
