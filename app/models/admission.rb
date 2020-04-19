class Admission < ApplicationRecord

  enum gender: [:महिला, :पुरुष, :अन्य]
  enum admission_for: [:नर्सरी, :कक्षा_१, :कक्षा_२,:कक्षा_३,:कक्षा_४,:कक्षा_५,:कक्षा_६,:कक्षा_७,:कक्षा_८,:कक्षा_९,:कक्षा_१० ]

  has_one_attached :image

  validates :name,:dob, :gender, :address, :phone, :email, :father_name, :father_phone,
            :mother_name,:mother_phone,:admission_for, presence: true
end
