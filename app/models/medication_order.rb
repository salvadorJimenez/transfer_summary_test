# == Schema Information
#
# Table name: medication_orders
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  dosage             :decimal(, )      not null
#  necessity          :text             not null
#  unit               :integer          default("mg"), not null
#  route              :integer          default("PO"), not null
#  order_frequency_id :integer
#  patient_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class MedicationOrder < ApplicationRecord
  belongs_to :order_frequency
  belongs_to :patient

  alias_attribute :order_frequency, :frequency

  enum unit: [:mg]
  enum route: [:PO, :IM, :SC]
end
