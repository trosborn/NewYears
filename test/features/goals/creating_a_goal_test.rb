require "test_helper"

feature "Creating a goal" do
  scenario "I want to create a goal that has a title and a description" do

     sign_in

    test_goal = goals(:diet)
    visit new_goal_path

    fill_in "Title", with: test_goal.title
    fill_in "Description", with: test_goal.description

    click_on "Create Goal"

    page.must_have_content "Eat healthier"
    page.must_have_content "I will not eat fast food this year"

  end
end
