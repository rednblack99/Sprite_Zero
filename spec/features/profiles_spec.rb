feature 'profile' do
  scenario 'homepage displays user description' do
    visit '/privateprofile/1'
    expect(page).to have_content "name:"
    expect(page).to have_content "age:"
    expect(page).to have_content "interests:"
    expect(page).to have_content "age:"
    expect(page).to have_content "photo:"
    expect(page).to have_content "availability:"
    expect(page).to have_content "location:"
  end

  context 'displaying info' do
    # let!(:user) {User.create(name: 'Joe Bloggs', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
let!(:user) {User.create(name: 'Joe Bloggs')}
    scenario 'A user can see their name on a profile page'  do
      visit '/privateprofile/1'
      expect(page).to have_content 'Joe Bloggs'
   end
 end
end
