def user_sign_in
  visit '/'
  fill_in 'sign_in_username', with: "Mickeymouse"
  fill_in 'sign_in_password', with: "Goofysecret"
  click_button "Sign In"
end

def user_sign_up
  visit '/'
  fill_in 'sign_up_username', with: "Jimbob"
  fill_in 'sign_up_password', with: "Goofysecret"
  fill_in 'sign_up_age', with: 69
  click_button "Sign Up"
end
