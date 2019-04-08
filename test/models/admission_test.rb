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

  test 'valid admission' do
    binding.pry
    assert true
  end
end
