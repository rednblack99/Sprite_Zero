require_relative 'web_helpers'

feature 'profile' do
  scenario 'homepage displays user description after sign up' do
    user_sign_up
    expect(page).to have_content "name:"
    expect(page).to have_content "description:"
    expect(page).to have_content "age:"
    expect(page).to have_content "interests:"
    expect(page).to have_content "photo:"
    expect(page).to have_content "availability:"
    expect(page).to have_content "location:"
  end


 #  context 'displaying info' do
 #    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
 #    scenario 'A user can see their details on their profile page'  do
 #      visit '/privateprofile/1'
 #      expect(page).to have_content 'Joe Bloggs'
 #      expect(page).to have_content "19"
 #      expect(page).to have_content "person"
 #      expect(page).to have_content "Ruby"
 #      expect(page).to have_content "test url"
 #      expect(page).to have_content "never"
 #      expect(page).to have_content "London"
 #    end
 # end


 context 'Editing their info' do
  let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}

  scenario 'A user can edit their name'  do
    user_sign_in
    click_on 'name:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: 'James Blag'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "James Blag"
  end

  scenario 'A user can edit their description'  do
    user_sign_in
    click_on 'description:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: 'robot'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "robot"
  end

  scenario 'A user can edit their interests'  do
    user_sign_in
    click_on 'interests:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: 'Javascript'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "Javascript"
  end

  scenario 'A user can edit their age'  do
    user_sign_in
    click_on 'age:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: '99'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "99"
  end

  scenario 'A user can edit their photo'  do
    user_sign_in
    click_on 'photo:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: 'new photo'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "new photo"
  end

  scenario 'A user can edit their availability'  do
    user_sign_in
    click_on 'availability:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: 'always'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "always"
  end

  scenario 'A user can edit their location'  do
    user_sign_in
    click_on 'location:'
    expect(page).to have_content "What should we change it to?"
    fill_in :updated_detail, with: 'moon'
    click_button "Update"
    expect(page.current_path).to eq '/privateprofile/2'
    expect(page).to have_content "moon"
  end

end

end
