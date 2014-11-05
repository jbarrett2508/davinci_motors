require 'rails_helper'


feature 'Editing Cars' do
  scenario 'can edit a car' do

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

    click_link 'Edit'

    fill_in 'Make', with: 'Audi'
    fill_in 'Model', with: 'TT'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '10000'

    click_button 'Update Car'

    expect(page).to have_content('Car was successfully updated')
    expect(page).to have_content('Audi')
    expect(page).to have_content('TT')
    expect(page).to have_content('2007')
    expect(page).to have_content('10000.0')
end
  end
