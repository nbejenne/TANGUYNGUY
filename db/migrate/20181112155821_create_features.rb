class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :name
      t.string :picto

      t.timestamps
    end
  end
end
