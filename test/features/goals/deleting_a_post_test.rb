require "test_helper"

feature "Deleting a goal" do
  scenario "My goal is bad I want to delete it" do
    visit goals_path

    click_on "Destroy"
    page.wont_have_content "healthy"
  end
end
