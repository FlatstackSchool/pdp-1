require "rails_helper"

feature "Update Article" do
  let(:user) { create :user }

  background do
    login_as user
  end

  scenario "User updates article" do
    visit article_path(create(:article, user: user))
    click_on "Edit"

    fill_form(:article, text: "New article text")
    click_on "Update Article"

    expect(page).to have_content("Article was successfully updated.")
  end

  scenario "User updates other user's article" do
    visit edit_users_article_path(create(:article))

    expect(page).to have_content("You're not authorized to access this page")
  end
end
