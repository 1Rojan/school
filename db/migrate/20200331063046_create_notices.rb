class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :description
      t.date :published

      t.timestamps
    end
  end
end
