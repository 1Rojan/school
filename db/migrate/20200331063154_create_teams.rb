class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :designation
      t.string :description
      t.references :team_category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
