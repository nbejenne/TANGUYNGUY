class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
