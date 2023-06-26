require 'rails_helper'

RSpec.feature 'Services', type: :feature do
  scenario 'User visits the new service page' do
    # Visit the new service page
    visit new_service_path

    # Assert that the page contains the necessary form elements
    expect(page).to have_selector('form')
    expect(page).to have_field('service_first_name')
    expect(page).to have_field('service_last_name')
    expect(page).to have_field('service_animal_name')
    expect(page).to have_field('service_hours_requested')
    expect(page).to have_field('service_date_of_service')
    #expect(page).to have_field('service_animal_type')
    
    # Fill in the form fields with sample data
    fill_in 'service_first_name', with: 'John'
    fill_in 'service_last_name', with: 'Doe'
    fill_in 'service_animal_name', with: 'Cat'
    page.choose(option: 'Cat')
    fill_in 'service_hours_requested', with: '3'
    fill_in 'service_date_of_service', with: Date.today + 1.day

    # Submit the form
    click_button 'Create Service'

    # Assert that the user is redirected to the index page
    expect(page).to have_current_path(services_path)

    # Assert that the new service is displayed on the index page
    expect(page).to have_content('John Doe')
    expect(page).to have_content('Cat')
    expect(page).to have_content('3')
    expect(page).to have_content(Date.today + 1.day)
  end
end
