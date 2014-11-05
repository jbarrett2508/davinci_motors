require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang 2300.0 created')
    expect(page).to have_content('Ford')
    expect(page).to have_content('Mustang')
    expect(page).to have_content('1967')
    expect(page).to have_content('2300.0')

  end

  scenario 'can create a second car' do

      visit '/'

      click_link 'New Car'

      fill_in 'Make', with: 'Subaru'
      fill_in 'Model', with: 'Legacy'
      fill_in 'Year', with: '1993'
      fill_in 'Price', with: '2500'

      click_button 'Create Car'

      expect(page).to have_content('1993 Subaru Legacy 2500.0 created')
      expect(page).to have_content('Subaru')
      expect(page).to have_content('Legacy')
      expect(page).to have_content('1993')
      expect(page).to have_content('2500.0')
    # Create a car
    # Visit the homepage
    # Click New Car
    # Fill in the fields
    # Click the Create Car button
    # Verify the flash message
    # Verify both cars show up on the index page
  end

  scenario 'displays on homepage' do
    visit '/'

    expect(page).to have_content('Make')
    expect(page).to have_content('Model')
    expect(page).to have_content('Year')
    expect(page).to have_content('Price')
  end
end
