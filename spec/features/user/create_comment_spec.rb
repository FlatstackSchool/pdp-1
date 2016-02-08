require "rails_helper"

feature "Create Comment", js: true do
  let(:user) { create :user }
  let(:article) { create :article }

  let(:comment_attributes) { attributes_for(:comment, text: "Hello World!") }

  background do
    login_as user
    visit article_path(article)
  end

  scenario "User creates comment" do
    fill_form(:comment, comment_attributes)
    click_on "Create Comment"

    expect(page).to have_content("Hello World!")
  end

  scenario "User creates comment without text" do
    fill_form(:comment, text: "")
    click_on "Create Comment"

    expect(page).to have_content("can't be blank")
  end
end
