require "test_helper"

feature "signing in as existing user" do
  scenario "I want to log back into the site after having created an account" do
    sign_in

    page.must_have_content "success"
  end
end
