# == Schema Information
#
# Table name: intros
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Intro < ApplicationRecord
  has_many :abouts
end
