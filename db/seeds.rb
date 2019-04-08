
facility = Facility.create(name: 'Blue Alps Ski')

thomas = facility.patients.create(
  first_name: 'Thomas',
  last_name: 'Schudel',
  mr: '30997',
  dob: 43.years.ago,
  gender: :male,
)

admission = thomas.create_admission(moment: '2019-04-04 22:16:42')

admission.observations.create(
  description: 'No soft tissues were damaged',
  moment: '2019-04-08 02:17:46'
)

admission.symptoms.create(
  description: 'severe pain'
)

admission.symptoms.create(
  description: 'swelling'
)

admission.symptoms.create(
  description: 'limited bending of the joint'
)

admission.diagnoses.create(
  coding_system: '101',
  code: 'S82',
  description: 'a fracture of upper end of the right tibia',
)

thomas.valid?
thomas.save

thomas.allergies.create(description: "hypersensitivity to aspirin or NSAIDs")
thomas.allergies.create(description: "gluten intolerance")

thomas.chronic_conditions.create(
  code: 'J45',
  description: 'Asthma',
)

medication = thomas.medication_orders.create(
  name: 'Acetaminophen',
  dosage: 500,
  necessity: 'relieve pain'
)

medication.create_order_frequency(
  value: 'q4'
)

medication = thomas.medication_orders.create(
  name: 'Naproxen',
  dosage: 500,
  necessity: 'relieve swelling'
)

medication.create_order_frequency(
  value: 'q6'
)

thomas.diagnostic_procedures.create(
  description: 'an exploratory radiography',
  moment: '2018-02-18 17:07:00'
)

thomas.treatments.create(
  description: 'temporary bracing the right leg',
  necessity: 'restrict the motion'
)

thomas.diagnoses.create(
  coding_system: '101A',
  code: 'S82',
  description: 'a closed fracture in the right tibia'
)
