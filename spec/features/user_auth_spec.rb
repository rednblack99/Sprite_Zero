feature 'User Authentication' do
  context 'Signup' do
  let!(:user){User.create(username: 'singleguy', password: 'secretguy', age: 18)}
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
    scenario 'cannot sign up twice with same username' do
      visit '/'
      fill_in :sign_up_username, with: 'singleguy'
      fill_in :sign_up_age, with: 16
      fill_in :sign_up_password, with: 'Password1'
      click_button 'Sign Up'

      expect(page.current_path).to eq '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
    end

    scenario 'signs up requires minimum 8 characters password' do
      visit '/'
      fill_in :sign_up_username, with: 'bananaman'
      fill_in :sign_up_age, with: 18
      fill_in :sign_up_password, with: 'Pass123'
      click_button 'Sign Up'

      expect(page.current_path).to eq '/'
    end
end

  context 'Signin without an account' do
    scenario 'User cannot signin without account' do
      visit '/'
      fill_in :sign_in_username, with: 'catman'
      fill_in :sign_in_password, with: 'Secret3'
      click_button 'Sign In'

      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
    end
  end

  context 'Signin' do
    let!(:user){User.create(username: 'awesomedave', password: 'Secret123', age: 18)}
    scenario 'User can signin' do
      visit '/'
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Secret123'
      click_button 'Sign In'

      expect(page).to have_content('Welcome Back')
    end
  end

end
