require_relative 'web_helpers'

feature 'view other users' do
  scenario 'to be able to view a list of other users profiles' do
    user_sign_in
    click_button 'Fithub'
    expect(page.current_path).to eq '/singleton-fithub'
  end
end
