# == Schema Information
#
# Table name: team_categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TeamCategory < ApplicationRecord

  has_many :team , dependent: :destroy
end
