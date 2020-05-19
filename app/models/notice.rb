# == Schema Information
#
# Table name: notices
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  published   :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Notice < ApplicationRecord
  has_one_attached :image

end
