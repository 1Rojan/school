class Team < ApplicationRecord

  belongs_to :team_category
  has_one_attached :image

end
