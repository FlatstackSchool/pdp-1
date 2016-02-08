require "rails_helper"

feature "List Comments" do
  let(:comment) { create(:comment) }

  scenario "Visitor lists comments" do
    visit article_path(comment.article)
    expect(page).to have_content(comment.text)
  end
end
