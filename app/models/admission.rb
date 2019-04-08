# == Schema Information
#
# Table name: admissions
#
#  id         :integer          not null, primary key
#  moment     :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admission < ApplicationRecord
  has_one :patient
  has_many :diagnoses, as: :diagnosable
  has_many :observations
  has_many :symptoms

  validates :moment, presence: true

  def date
    moment.strftime('%B %d, %Y')
  end

  def time
    moment.strftime('%I:%M %P')
  end
end
