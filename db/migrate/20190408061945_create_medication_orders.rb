class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders do |t|
      t.string :name, null: false
      t.decimal :dosage, null: false
      t.text :necessity, null: false
      t.integer :unit, null: false, default: 0
      t.integer :route, null: false, default: 0
      t.references :order_frequency, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
