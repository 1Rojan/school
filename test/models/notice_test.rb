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
require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
