require_relative 'web_helpers'

feature 'view other users' do
  scenario 'to be able to view a list of other users profiles' do
    user_sign_in
    click_link 'FitHub'
    expect(page.current_path).to eq '/singleton-fithub'
  end
end

feature 'view profiles on new page' do
  let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
  scenario 'to be able to view users profiles on new page' do
    user_sign_in
    click_link 'FitHub'
    click_link 'Joe Bloggs'
    expect(page).to have_content 'Joe Bloggs'
    expect(page).to have_content "19"
    expect(page).to have_content "person"
    expect(page).to have_content "Ruby"
    expect(page).to have_content "test url"
    expect(page).to have_content "never"
    expect(page).to have_content "London"
  end
end
