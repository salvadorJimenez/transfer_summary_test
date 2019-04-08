# == Schema Information
#
# Table name: order_frequencies
#
#  id         :integer          not null, primary key
#  value      :string           not null
#  unit       :integer          default("hour"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderFrequencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
