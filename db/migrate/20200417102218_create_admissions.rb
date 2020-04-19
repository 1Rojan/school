class CreateAdmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :admissions do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :address
      t.string :phone
      t.string :email
      t.string :father_name
      t.string :mother_name
      t.string :father_phone
      t.string :mother_phone
      t.integer :admission_for
      t.string :mark_sheet

      t.timestamps
    end
  end
end
