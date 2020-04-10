class About < ApplicationRecord

  belongs_to :intro
  has_one_attached :image

end
