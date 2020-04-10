class Gallery < ApplicationRecord

  after_rollback :create_error

  has_one_attached :image


  def create_error
    puts "hello"
  end
end
