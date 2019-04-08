class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :middle_name, null: false
      t.string :last_name
      t.string :mr
      t.datetime :dob
      t.integer :gender, null: false, default: 0
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end
