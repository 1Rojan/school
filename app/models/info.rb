# == Schema Information
#
# Table name: infos
#
#  id              :bigint           not null, primary key
#  school_name     :string
#  school_intro    :string
#  school_location :string
#  contact         :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Info < ApplicationRecord

  has_one_attached :logo
end
