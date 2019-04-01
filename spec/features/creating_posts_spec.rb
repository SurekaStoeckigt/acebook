require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/"
    click_link "New post"
    attach_file('Image', "spec/files/images/coffee.jpg")
    fill_in "Caption", with: "#coffeetime"
    click_button "Create Post"
    expect(page).to have_content("#coffeetime")
    expect(page).to have_css("img[src*='coffee.jpg']")
  end
end
# visit the root
# click button to create new post
# fill out form
# click submit
# expect next page to have text
# expect page to have photo
