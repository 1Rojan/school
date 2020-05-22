class ChangeTypeToBeIntegerInGender < ActiveRecord::Migration[6.0]
  # def change
  #     change_column :admissions, :gender, :integer
  # end

  def up
    change_column :admissions, :gender, :integer, using: 'gender::integer'
  end

  def down
    change_column :admissions, :gender, :integer, using: 'gender::integer'
  end

end
