feature 'User Authentication' do
  context 'Signup' do
    let!(:user) { User.create(username: 'singleguy', password: 'secretguy', age: 18) }
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

    scenario 'signs up requires age to be between 16 and 100' do
      visit '/'
      fill_in :sign_up_username, with: 'chickenman'
      fill_in :sign_up_age, with: 4
      fill_in :sign_up_password, with: 'Sexcret123'
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

    scenario 'Cannot directly visit /privateprofile without signing in' do
      visit '/privateprofile/1'
      expect(page.current_path).to eq '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
    end
  end

  context 'Signin' do
    let!(:user) { User.create(username: 'awesomedave', password: 'Secret123', age: 18) }
    scenario 'User can signin' do
      visit '/'
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Secret123'
      click_button 'Sign In'

      expect(page).to have_content('Welcome Back')
    end
    scenario 'User cannot signin with incorrect password' do
      visit '/'
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Password?!?!'
      click_button 'Sign In'

      expect(page.current_path).to eq '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
    end

  end
  context 'Sign out' do
    scenario 'can sign out of account' do
      visit '/'
      fill_in :sign_up_username, with: 'fabdave'
      fill_in :sign_up_age, with: 20
      fill_in :sign_up_password, with: 'Secret123'
      click_button 'Sign Up'
      click_button 'Sign Out'
      visit '/privateprofile/1'

      expect(page.current_path).to eq '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
    end
  end

  context 'Delete account' do
    let!(:user) { User.create(username: 'awesomedave', password: 'Secret123', age: 18) }
    scenario 'gets confirmation for deleting account' do
      visit '/'
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Secret123'
      click_button 'Sign In'
      click_link 'Delete Account'

      expect(page).to have_content('Are you sure you want to delete your account?')
    end

    scenario 'can chose not to delete account' do
      visit '/'
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Secret123'
      click_button 'Sign In'
      click_link 'Delete Account'
      click_button 'No'

      expect(page).to have_content('Welcome Back')
    end

    scenario 'can delete account' do
      visit '/'
      fill_in :sign_in_username, with: 'awesomedave'
      fill_in :sign_in_password, with: 'Secret123'
      click_button 'Sign In'
      click_link 'Delete Account'
      click_button 'Yes'

      expect(page.current_path).to eq '/'
      expect(page).to have_content('Username:')
      expect(page).to have_content('Password:')
    end

  end

end

RSpec.feature 'availability' do
  scenario 'I can add a date I am available' do
    visit '/'
    fill_in :sign_up_username, with: 'new name'
    fill_in :sign_up_age, with: 89
    fill_in :sign_up_password, with: 'Password1'
    click_button 'Sign Up'
    fill_in 'date_available', with: "02/02/2018"
    click_button 'Add'
    expect(page).to have_content "02/02/2018"
  end
end
