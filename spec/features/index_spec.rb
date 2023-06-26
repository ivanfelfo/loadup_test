require 'rails_helper'

RSpec.feature 'Services', type: :feature do
  scenario 'User visits the services index page' do
    Service.create!(first_name: 'John', last_name: 'Doe', animal_name: 'Cat', animal_type: 'cat', hours_requested: 3, date_of_service: Date.today + 1.day)
    Service.create!(first_name: 'Jane', last_name: 'Smith', animal_name: 'Dog', animal_type: 'dog', hours_requested: 4, date_of_service: Date.today + 1.day)

    visit services_path

    expect(page).to have_content('John Doe')
    expect(page).to have_content('Cat')
    expect(page).to have_content('3')
    expect(page).to have_content(Date.today + 1.day)

    expect(page).to have_content('Jane Smith')
    expect(page).to have_content('Dog')
    expect(page).to have_content('4')
    expect(page).to have_content(Date.today + 1.day)
  end
end
