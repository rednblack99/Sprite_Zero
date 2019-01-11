RSpec.feature 'infrastructure' do
  context 'Displaying webpages' do
    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
    scenario 'Can visit homepage' do
      visit '/'
      expect(page).to have_content "Welcome to Singleton Dating"
    end

    scenario 'Can visit my profile'  do
      visit '/'
      fill_in 'sign_up_username', with: "Mickeymouse"
      fill_in 'sign_up_password', with: "Goofysecret"
      fill_in 'sign_up_age', with: "69"
      click_button "Sign Up"
      expect(page).to have_content "Welcome Back"
    end
  end
end
