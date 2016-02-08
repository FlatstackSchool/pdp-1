require "rails_helper"

feature "View article" do
  let!(:article) { create(:article).decorate }

  scenario "Visitor views article" do
    visit article_path(article)

    expect(page).to have_content(article.title)
    expect(page).to have_content(article.short_text)
    expect(page).to have_content(article.author_full_name)
    expect(page).to have_content(article.time_created_in_words)
  end
end
