class AddAdmissionToPatient < ActiveRecord::Migration[5.2]
  def change
    add_reference :patients, :admission, foreign_key: true
  end
end
