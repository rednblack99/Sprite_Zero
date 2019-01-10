feature 'User Authentication' do
  context 'Signup' do
    scenario 'User can signup' do
      visit '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Age:')
      expect(page).to have_content('Password:')
      fill_in :username, with: 'awesomedave'
      fill_in :age, with: 16
      fill_in :password, with: 'Secret123'
      click_button 'Sign Up'
    end
  end
end
