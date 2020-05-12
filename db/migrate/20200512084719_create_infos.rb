class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :school_name
      t.string :school_intro
      t.string :school_location
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end
