# == Schema Information
#
# Table name: galleries
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Gallery < ApplicationRecord

  after_rollback :create_error

  has_one_attached :image


  def create_error
    puts "hello"
  end
end
