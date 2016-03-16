require 'rails_helper'

feature 'vaccination history' do

  context 'no vaccinations added' do
    scenario 'should display prompt to add a vaccination' do
      sign_up
      expect(page).to have_content 'No vaccinations added yet'
      expect(page).to have_link 'Add a vaccination'
    end

  end

  context 'vaccinations have been added' do
    before do
      History.create(id: 'Typhoid')
    end

    scenario 'display vaccinations' do
      visit '/histories'
      expect(page).to have_content('Typhoid')
      expect(page).not_to have_content('No vaccinations added yet')
    end
  end

  context 'creating vaccinations' do
    scenario 'prompts user to fill out a form, then displays the new vaccination' do
      visit '/histories'
      click_link 'Add a vaccination'
      fill_in 'Name', with: 'Typhoid'
      click_button 'Add vaccination'
      expect(page).to have_content 'Typhoid'
      expect(current_path).to eq '/histories'
    end
end

end
