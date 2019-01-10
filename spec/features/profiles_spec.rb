feature 'profile' do
  scenario 'homepage displays user description' do
    visit '/profile'
    expect(page).to have_content "name:"
    expect(page).to have_content "age:"
    expect(page).to have_content "interests:"
    expect(page).to have_content "age:"
    expect(page).to have_content "photo:"
    expect(page).to have_content "availability:"
    expect(page).to have_content "location:"
  end
end
