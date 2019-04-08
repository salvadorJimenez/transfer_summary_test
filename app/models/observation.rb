# == Schema Information
#
# Table name: observations
#
#  id           :integer          not null, primary key
#  description  :text             not null
#  moment       :datetime         not null
#  admission_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Observation < ApplicationRecord
  belongs_to :admission
end
