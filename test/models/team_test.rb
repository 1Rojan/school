# == Schema Information
#
# Table name: teams
#
#  id               :bigint           not null, primary key
#  name             :string
#  designation      :string
#  description      :string
#  team_category_id :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
