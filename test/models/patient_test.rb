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

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
