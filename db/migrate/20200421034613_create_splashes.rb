class CreateSplashes < ActiveRecord::Migration[6.0]
  def change
    create_table :splashes do |t|
      t.string :name

      t.timestamps
    end
  end
end
