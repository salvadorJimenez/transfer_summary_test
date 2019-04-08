# == Schema Information
#
# Table name: diagnostic_procedures
#
#  id          :integer          not null, primary key
#  description :text             not null
#  moment      :datetime         not null
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DiagnosticProcedureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
