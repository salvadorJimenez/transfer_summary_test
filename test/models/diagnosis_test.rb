# == Schema Information
#
# Table name: diagnoses
#
#  id               :integer          not null, primary key
#  coding_system    :string
#  code             :string           not null
#  description      :text
#  type             :string           default("Diagnosis"), not null
#  diagnosable_type :string
#  diagnosable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class DiagnosisTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
