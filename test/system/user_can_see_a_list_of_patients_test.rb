require 'application_system_test_case'

class UserCanSeeAListOfPatientsTest < ApplicationSystemTestCase
  def setup
    @patient1 = patients(:one)
    @patient2 = patients(:two)
  end

  test 'user can see a list od patients' do
    visit patients_path
    assert page.has_content?('List of patients')
    assert page.has_content?(@patient1.first_name)
    assert page.has_content?(@patient2.first_name)
  end

  test 'has a link to redirect to the facility view' do
    visit patients_path
    assert page.has_link?('Watch facility')
  end

  test 'the button will redirect you to a facility page' do
    visit patients_path
    assert page.has_link?('Watch facility')
    refute page.has_content?('Transferring Facility')
    first('.btn-link').click
    assert page.has_content?('Transferring Facility')
  end
end
