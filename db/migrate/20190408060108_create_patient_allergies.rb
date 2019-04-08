class CreatePatientAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_allergies do |t|
      t.references :patient, foreign_key: true
      t.references :allergy, foreign_key: true

      t.timestamps
    end
  end
end
