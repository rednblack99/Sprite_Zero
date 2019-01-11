def user_sign_in
  visit '/'
  fill_in 'sign_in_username', with: "Mickeymouse"
  fill_in 'sign_in_password', with: "Goofysecret"
  click_button "Sign In"
end
