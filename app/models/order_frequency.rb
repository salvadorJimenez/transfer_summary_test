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

class OrderFrequency < ApplicationRecord
  has_one :medication_order

  enum unit: [:hour]
end
