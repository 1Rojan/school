# == Schema Information
#
# Table name: admissions
#
#  id            :bigint           not null, primary key
#  name          :string
#  dob           :date
#  gender        :string
#  address       :string
#  phone         :string
#  email         :string
#  father_name   :string
#  mother_name   :string
#  father_phone  :string
#  mother_phone  :string
#  admission_for :integer
#  mark_sheet    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Admission < ApplicationRecord

  enum gender: [:महिला, :पुरुष, :अन्य]
  enum admission_for: [:नर्सरी, :एल_के_जि, :यु_के_जि,:कक्षा_१, :कक्षा_२,:कक्षा_३,:कक्षा_४,:कक्षा_५,:कक्षा_६,:कक्षा_७,:कक्षा_८,:कक्षा_९,:कक्षा_१० ]

  has_one_attached :image

  validates :name,:dob, :address, :phone, :father_name,
            :mother_name,:admission_for, presence: true

  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
