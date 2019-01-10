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

  #   scenario "User can't use same username twice" do
  #     visit '/'
  #     fill_in :sign_up_username, with: 'singleguy'
  #     fill_in :sign_up_age, with: 16
  #     fill_in :sign_up_password, with: 'Secret123'
  #     click_button 'Sign Up'
  #     expect(page).to have_content('name:')
  # end
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
