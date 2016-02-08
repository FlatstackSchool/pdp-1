require "rails_helper"

feature "List articles" do
  let!(:article) { create(:article).decorate }

  scenario "Visitor lists articles" do
    visit articles_path

    expect(page).to have_content(article.title)
    expect(page).to have_content(article.short_text)
    expect(page).to have_content(article.author_full_name)
    expect(page).to have_content(article.time_created_in_words)
  end
end
