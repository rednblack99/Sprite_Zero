feature 'profile' do
  scenario 'homepage displays user description' do
    visit '/privateprofile/1'
    expect(page).to have_content "name:"
    expect(page).to have_content "description:"
    expect(page).to have_content "age:"
    expect(page).to have_content "interests:"
    expect(page).to have_content "photo:"
    expect(page).to have_content "availability:"
    expect(page).to have_content "location:"
  end

  context 'displaying info' do
    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
    
    scenario 'A user can see their details on their profile page'  do
      visit '/privateprofile/1'
      expect(page).to have_content 'Joe Bloggs'
      expect(page).to have_content "19"
      expect(page).to have_content "person"      
      expect(page).to have_content "Ruby"
      expect(page).to have_content "test url"
      expect(page).to have_content "never"
      expect(page).to have_content "London"
    end  
 end
end
