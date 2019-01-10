feature 'User Authentication' do
  context 'Signup' do
    scenario 'User can signup' do
      visit '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Age:')
      expect(page).to have_content('Password:')
      fill_in :sign_up_username, with: 'awesomedave'
      fill_in :sign_up_age, with: 16
      fill_in :sign_up_password, with: 'Secret123'
      click_button 'Sign Up'
    end
  end

  context 'Signin' do
    scenario 'User can signin' do
      visit '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Secret123'
      click_button 'Sign In'
    end
  end
end
