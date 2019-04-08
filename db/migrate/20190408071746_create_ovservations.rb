class CreateOvservations < ActiveRecord::Migration[5.2]
  def change
    create_table :ovservations do |t|
      t.text :description, null: false
      t.datetime :moment, null: false
      t.references :admission, foreign_key: true

      t.timestamps
    end
  end
end
