# == Schema Information
#
# Table name: symptoms
#
#  id           :integer          not null, primary key
#  description  :text             not null
#  admission_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Symptom < ApplicationRecord
  belongs_to :admission
end
