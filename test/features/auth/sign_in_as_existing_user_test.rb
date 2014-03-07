require "test_helper"

feature "signing in as existing user" do
  scenario "I want to log back into the site after having created an account" do
    visit root_path

    click_on "Login"
    fill_in "Email", with: "email@example.com"
    fill_in "Password", with: "password"

    click_on "Sign in"

    page.must_have_content "success"
  end
end
