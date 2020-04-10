class CreateIntros < ActiveRecord::Migration[6.0]
  def change
    create_table :intros do |t|
      t.string :name

      t.timestamps
    end
  end
end
