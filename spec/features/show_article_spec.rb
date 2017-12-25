require "rails_helper"


RSpec.feature "Showing an Articles" do
	before do
		@article = Article.create(title: "The 2nd article", body: "body of 2nd article")
	end

	scenario "A user shows an article" do
		visit "/"

		click_link @article.title

		expect(page).to have_content(@article.title)
		expect(page).to have_content(@article.body)
		expect(current_path).to eq(article_path(@article))
	end
end