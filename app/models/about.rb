# == Schema Information
#
# Table name: abouts
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  intro_id    :bigint
#
class About < ApplicationRecord

  belongs_to :intro
  has_one_attached :image

end
