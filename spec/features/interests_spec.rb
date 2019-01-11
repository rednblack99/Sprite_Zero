require_relative 'web_helpers'

feature 'programming interests' do
  scenario 'to be able to submit favourite programming language' do
    user_sign_in
    click_button 'Select your favourite programming language'
    select('Python', from:'language')
    expect(page).to have_content 'Python'
  end
 end
