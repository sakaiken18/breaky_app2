class CreateTops < ActiveRecord::Migration[6.1]
  def change
    create_table :tops do |t|
      t.string :title
      t.string :image
      t.text :content
      t.datetime :start_time
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
