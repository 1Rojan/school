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
require 'test_helper'

class AdmissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
