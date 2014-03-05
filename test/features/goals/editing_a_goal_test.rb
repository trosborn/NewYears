require "test_helper"

feature "Editing a goal" do
  scenario "I got lazy, and want to make my goal easier" do

    test_goal = goals(:diet)
    visit goal_path(test_goal)

    click_on "Edit"
    fill_in "Title", with: "Eat a little healthier"
    fill_in "Description", with: "Eat fast food no more than once a week"
    click_on "Update Goal"

    page.text.must_include "healthier"
    page.text.must_include "no more than once a week"
  end
end
