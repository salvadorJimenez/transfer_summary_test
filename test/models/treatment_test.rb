# == Schema Information
#
# Table name: treatments
#
#  id          :integer          not null, primary key
#  description :text
#  necessity   :text
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TreatmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
