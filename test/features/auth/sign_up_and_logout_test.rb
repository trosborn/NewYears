require "test_helper"

feature "I want to logout" do
  scenario "I click logout and my session ends" do
    visit root_path

    click_on "Sign Up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    click_on "Sign out"
    page.must_have_content "success"
  end
end
