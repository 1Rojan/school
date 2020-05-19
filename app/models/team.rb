# == Schema Information
#
# Table name: teams
#
#  id               :bigint           not null, primary key
#  name             :string
#  designation      :string
#  description      :string
#  team_category_id :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Team < ApplicationRecord

  belongs_to :team_category
  has_one_attached :image

end
