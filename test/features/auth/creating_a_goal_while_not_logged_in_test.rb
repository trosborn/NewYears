require "test_helper"

feature "must be signed in to create goal" do
  scenario "I try to create a goal while logged out, but cannot" do


    visit new_goal_path


    page.must_have_content "You need to sign in or sign up before continuing"
  end
end
