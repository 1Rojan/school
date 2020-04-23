class TeamCategory < ApplicationRecord

  has_many :team , dependent: :destroy
end
