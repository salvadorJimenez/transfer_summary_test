class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.string :coding_system
      t.string :code, null: false
      t.text :description
      t.string :type, null: false, default: "Diagnosis"
      t.references :diagnosable, polymorphic: true

      t.timestamps
    end
  end
end
