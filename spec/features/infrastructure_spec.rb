RSpec.feature 'infrastructure' do
  scenario 'Can visit homepage' do
    visit '/'
    expect(page).to have_content "Hello Singletons"
  end

  scenario 'Can visit my profile'  do
    visit '/profile'
    expect(page).to have_content "Welcome back"
  end
end
