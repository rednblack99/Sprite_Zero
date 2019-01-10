RSpec.feature 'infrastructure' do
  scenario 'Can visit homepage' do
    visit '/'
    expect(page).to have_content "Hello Singletons"
  end

  scenario 'Can visit my profile'  do
    visit '/privateprofile/1'
    expect(page).to have_content "Welcome Back"
  end
end
