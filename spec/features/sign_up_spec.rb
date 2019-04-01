
RSpec.feature "Sign up", type: :feature do
  scenario "User can sign up" do
    visit "/"
    click_link 'Sign up'
    fill_in "sign_up[firstname]", with: "testfirstname"
    fill_in "sign_up[lastname]", with: "testlastname"
    fill_in "sign_up[username]", with: "testuser"
    fill_in "sign_up[email]", with: "testuser@example.com"
    fill_in "sign_up[password]", with: "1234"
    fill_in "sign_up[password_confirm]", with: "1234"
    click_button "Sign Up"
    expect(Sign_up.exists?(username: "testuser")).to be true
  end
end
