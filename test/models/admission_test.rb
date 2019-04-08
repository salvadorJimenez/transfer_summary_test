# == Schema Information
#
# Table name: admissions
#
#  id         :integer          not null, primary key
#  moment     :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AdmissionTest < ActiveSupport::TestCase
  def setup
    @admission = admissions(:one)
  end

  test 'moment cant be blank' do
    assert @admission.valid?
    refute @admission.moment.blank?

    @admission.moment = ''

    refute @admission.valid?
  end
end
