# == Schema Information
#
# Table name: ovservations
#
#  id           :integer          not null, primary key
#  description  :text             not null
#  moment       :datetime         not null
#  admission_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ovservation < ApplicationRecord
  belongs_to :admission
end
