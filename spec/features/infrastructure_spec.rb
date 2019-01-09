RSpec.feature 'infrastructure' do
  scenario 'Can visit homepage' do
    visit '/'
    expect(page).to have_content "Hello Singletons"
  end
end
