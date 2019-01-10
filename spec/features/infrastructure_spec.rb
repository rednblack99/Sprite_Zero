RSpec.feature 'infrastructure' do
  context 'Displaying webpages' do
    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}

    scenario 'Can visit homepage' do
      visit '/'
      expect(page).to have_content "Hello Singletons"
    end

    scenario 'Can visit my profile'  do
      visit '/privateprofile/1'
      expect(page).to have_content "Welcome Back"
    end
  end
end
