# == Schema Information
#
# Table name: splashes
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Splash < ApplicationRecord

  has_one_attached :image
end
