# == Schema Information
#
# Table name: facilities
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Facility < ApplicationRecord
  has_many :patients
end
