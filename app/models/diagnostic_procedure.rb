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

class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient

  validates :description, :moment, presence: true

  def date
    moment.strftime('%B %d, %Y')
  end

  def time
    moment.strftime('%I:%M %P')
  end
end
