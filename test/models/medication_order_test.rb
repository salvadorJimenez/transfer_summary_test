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

require 'test_helper'

class MedicationOrderTest < ActiveSupport::TestCase
  def setup
    @patient = patients(:one)
  end

  test 'valid medication order' do
    mo = @patient.medication_orders.build(
      name: 'Paracetamol',
      dosage: 500.00,
      necessity: 'overcome pain',
    )

    assert mo.valid?
  end

  test 'invalid medication order' do
    mo = @patient.medication_orders.build(
      name: '',
      dosage: 500.00,
      necessity: 'overcome pain',
    )

    refute mo.valid?

    mo = @patient.medication_orders.build(
      name: 'Paracetamol',
      dosage: nil,
      necessity: 'overcome pain',
    )

    refute mo.valid?

    mo = @patient.medication_orders.build(
      name: 'Paracetamol',
      dosage: 500.00,
      necessity: '',
    )

    refute mo.valid?
  end
end
