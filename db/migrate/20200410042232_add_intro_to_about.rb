class AddIntroToAbout < ActiveRecord::Migration[6.0]
  def change
    add_reference :abouts, :intro, null: true, foreign_key: true
  end
end
