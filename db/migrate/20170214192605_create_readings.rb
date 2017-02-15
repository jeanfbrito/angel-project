class CreateReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :readings do |t|
      t.string :mac
      t.datetime :datetime
      t.jsonb :data
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
