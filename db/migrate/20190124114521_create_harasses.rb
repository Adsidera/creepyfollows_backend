class CreateHarasses < ActiveRecord::Migration[5.2]
  def change
    create_table :harasses do |t|
      t.text :start_address
      t.datetime :happened_at
      t.float :longitude
      t.float :latitude
      t.text :description

      t.timestamps
    end
  end
end
