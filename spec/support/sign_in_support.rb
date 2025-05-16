module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_on('Log in')
    sleep 1
    expect(page).to have_current_path(root_path)
  end
end