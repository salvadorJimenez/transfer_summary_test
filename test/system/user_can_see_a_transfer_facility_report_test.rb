class UserCanSeeATransferFacilityReportTest < ApplicationSystemTestCase
  def setup
    @patient1 = patients(:one)
  end

  test 'user can see a report whith his facility information' do
    visit patient_facility_path(@patient1)

    assert page.has_content?('Transferring Facility')
    assert page.has_content?(@patient1.first_name)
    assert page.has_content?(@patient1.last_name)
    assert page.has_content?(@patient1.mr)
    assert page.has_content?(@patient1.allergies.pluck(:description).to_sentence)
    assert page.has_content?(@patient1.admission.date)
    assert page.has_content?(@patient1.admission.time)
    assert page.has_content?(@patient1.admission.diagnoses.sample.description)
    assert page.has_content?(@patient1.diagnoses.sample.description)
  end
end
