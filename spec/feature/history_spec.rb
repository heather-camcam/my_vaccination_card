require 'rails_helper'

feature 'vaccination history' do

  before do
    visit '/users/sign_up'
    fill_in 'user_email', with: 'asd@asd.com'
    fill_in 'user_first_name', with: 'asd'
    fill_in 'user_last_name', with: 'asd'
    fill_in 'user_password', with: 'asdasdasd'
    fill_in 'user_password_confirmation', with: 'asdasdasd'
    click_button 'Sign up'
  end

  context 'no vaccinations added' do

    scenario 'should display prompt to add a vaccination' do
      visit '/'
      expect(page).to have_link 'Add a vaccination'
    end

  end

  context 'creating vaccinations' do

    scenario 'prompts user to fill out a form, then stores the vax in the db' do
      visit '/histories/new'
      fill_in 'history_clinic_name', with: 'gogo'
      click_button 'Create History'
      expect(current_path).to eq '/histories'
      history = History.find_by(clinic_name: 'gogo')
      expect(history.clinic_name).to eq 'gogo'
    end

  end

end
