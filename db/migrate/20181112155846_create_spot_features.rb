class CreateSpotFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_features do |t|
      t.references :spot, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
